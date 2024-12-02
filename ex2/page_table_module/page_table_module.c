
#include <linux/kernel.h> /* We're doing kernel work */
#include <linux/module.h> /* Specifically, a module */
#include <linux/proc_fs.h> /* Necessary because we use the proc fs */
#include <linux/uaccess.h> /* for copy_from_user */
#include <linux/version.h>
#include <linux/pgtable.h>
#include <asm/pgtable.h>
#include "page_table_module.h"

#if LINUX_VERSION_CODE >= KERNEL_VERSION(5, 6, 0)
#define HAVE_PROC_OPS
#endif

#define PROCFS_MAX_SIZE 1024
#define PROCFS_NAME "page_table_addresses"

static struct proc_dir_entry *our_proc_file;

static struct pt_module_write pt_write = {};

/* This function is called then the /proc file is read */
static ssize_t procfile_read(struct file *file_pointer, char __user *buff,
                             size_t buffer_length, loff_t *offset)
{
	struct pt_module_read pt_read = {
		.pid = pt_write.pid,
		.vaddr = pt_write.vaddr,
		.unfolding = {}
	};

	struct pid *pid_ptr = find_get_pid(pt_write.pid);
	if (!pid_ptr) {
		pr_info("Pid %d is not found\n", pt_write.pid);
		return 0;
	}

	struct task_struct *task = pid_task(pid_ptr, PIDTYPE_PID);
	if (!task) {
		pr_info("Task with pid %d is not found\n", pt_write.pid);
		return 0;
	}

	struct mm_struct *task_mm = task->mm;
  	if (task_mm == NULL) {
		pr_info("task->mm is null\n");
		return 0;
	}

	phys_addr_t pgd_base = 0;
	pgd_t *pgd = NULL;
	phys_addr_t p4d_base = 0;
	p4d_t *p4d = NULL;
	phys_addr_t pud_base = 0;
	pud_t *pud = NULL;
	phys_addr_t pmd_base = 0;
	pmd_t *pmd = NULL;
	phys_addr_t pte_base = 0;
	pte_t *pte = NULL;

	pgd_base = (phys_addr_t)task_mm->pgd;
	pgd = pgd_offset(task_mm, pt_write.vaddr);
	if (!(pgd_none(*pgd) || pgd_bad(*pgd))) {
		p4d_base = (phys_addr_t)pgd_val(*pgd);
		p4d = p4d_offset(pgd, pt_write.vaddr);
		if (!(p4d_none(*p4d) || p4d_bad(*p4d))) {
			pud_base = (phys_addr_t)p4d_pgtable(*p4d);
			pud = pud_offset(p4d, pt_write.vaddr);
			if (!(pud_none(*pud) || pud_bad(*pud))) {
				pmd_base = (phys_addr_t)pud_pgtable(*pud);
				pmd = pmd_offset(pud, pt_write.vaddr);
				if (!(pmd_none(*pmd) || pmd_bad(*pmd))) {
					pte_base = (phys_addr_t)pmd_page_vaddr(*pmd);
					pte = pte_offset_kernel(pmd, pt_write.vaddr);
					if (!pte_none(*pte)) {
						pt_read.phys_addr = pte_val(*pte);
					}
				}
			}
		}
	}

	pt_read.unfolding[0].base = pgd_base;
	pt_read.unfolding[1].base = p4d_base;
	pt_read.unfolding[2].base = pud_base;
	pt_read.unfolding[3].base = pmd_base;
	pt_read.unfolding[4].base = pte_base;

	pt_read.unfolding[0].ptr = (uint64_t)pgd;
	pt_read.unfolding[1].ptr = (uint64_t)p4d;
	pt_read.unfolding[2].ptr = (uint64_t)pud;
	pt_read.unfolding[3].ptr = (uint64_t)pmd;
	pt_read.unfolding[4].ptr = (uint64_t)pte;


	ssize_t ret = sizeof(pt_read);
    if (copy_to_user(buff, &pt_read, sizeof(pt_read))) {
        pr_info("copy_to_user failed\n");
        ret = 0;
    }

    return ret;
}

/* This function is called with the /proc file is written. */
static ssize_t procfile_write(struct file *file, const char __user *buff,
                              size_t len, loff_t *off)
{
	int ret = 0;
	pr_info("write");
    if (len != sizeof(pt_write) || (ret = copy_from_user(&pt_write, buff, sizeof(pt_write)))) {
		pr_info("write len: %d, ret: %d", len, ret);
        return -EFAULT;
	}
	off += sizeof(pt_write);

    return sizeof(pt_write);
}

#ifdef HAVE_PROC_OPS
static const struct proc_ops proc_file_fops = {
    .proc_read = procfile_read,
    .proc_write = procfile_write,
};
#else
static const struct file_operations proc_file_fops = {
    .read = procfile_read,
    .write = procfile_write,
};
#endif

static int __init procfs2_init(void)
{
	printk(KERN_INFO "%s\n", "Loading Kernel Module");
    our_proc_file = proc_create(PROCFS_NAME, 0666, NULL, &proc_file_fops);
    if (NULL == our_proc_file) {
        pr_alert("Error:Could not initialize /proc/%s\n", PROCFS_NAME);
        return -ENOMEM;
    }

    pr_info("/proc/%s created\n", PROCFS_NAME);
    return 0;
}

static void __exit procfs2_exit(void)
{
    proc_remove(our_proc_file);
    pr_info("/proc/%s removed\n", PROCFS_NAME);
}

module_init(procfs2_init);
module_exit(procfs2_exit);

MODULE_LICENSE("GPL");
