#ifndef PAGE_TABLE_MODULE_H_
#define PAGE_TABLE_MODULE_H_

struct pt_module_write {
	pid_t pid;
	uint64_t vaddr;
};

#define PAGE_TABLE_LEVELS 5
struct unfolding_entry {
	uint64_t base;
	uint64_t ptr;
};
struct pt_module_read {
	pid_t pid;
	uint64_t vaddr;
	struct unfolding_entry unfolding[PAGE_TABLE_LEVELS];
	uint64_t phys_addr;
};

#endif /* PAGE_TABLE_MODULE_H_ */
