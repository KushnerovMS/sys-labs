#include <cstdlib>
#include <fcntl.h>
#include <stdint.h>
#include <unistd.h>
#include <vector>
#include <map>
#include <iostream>
#include <fstream>
#include <string>
#include <format>
#include <iomanip>

#include <page_table_module/page_table_module.h>

#define PT_ADDR_FILENAME "/proc/page_table_addresses"

std::vector<std::map<uint64_t, std::map<uint64_t, uint64_t>>> pt_layers(PAGE_TABLE_LEVELS);
std::map<uint64_t, std::string> pages;

const std::vector<std::string> layer_labels= {
	"pgd", "p4d", "pud", "pmd", "pte"
};

int main(int argc, char *argv[])
{
	if (argc != 2) {
		std::cout << "usage:" << argv[0] << " pid\n";
		return 1;
	}

	int pt_addr_fd = open(PT_ADDR_FILENAME, O_RDWR);

	std::ifstream maps_file (std::string("/proc/")+argv[1]+"/maps");
	std::string line = "";
	std::getline(maps_file, line) ;
	for (; maps_file; std::getline(maps_file, line)) {
		uint64_t begin_addr = std::stoull(line, 0, 16);
		uint64_t end_addr = std::stoull(line.substr(line.find('-')+1), 0, 16);

		auto label_pos = line.find('/');
		if (label_pos == line.npos) {
			label_pos = line.find('[');
		}
		std::string mem_label = (label_pos != line.npos)? line.substr(label_pos) : "";

		for (uint64_t addr = begin_addr; addr < end_addr; addr += 0x1000u) {
			struct pt_module_write pt_write = {
				.pid = std::stoi(argv[1]), .vaddr = addr
			};	
			struct pt_module_read pt_read = {};

			write(pt_addr_fd, &pt_write, sizeof(pt_write));
			read(pt_addr_fd, &pt_read, sizeof(pt_read));

			if (pt_read.phys_addr != 0) {
				for (size_t i = 0; i < PAGE_TABLE_LEVELS;) {
					if (i+1 < PAGE_TABLE_LEVELS) {
						size_t i_old = i;
						for (; i < PAGE_TABLE_LEVELS; ++i) {
							if (pt_read.unfolding[i_old].ptr != pt_read.unfolding[i].ptr) {
								break;
							}
						}
						pt_layers[i_old][pt_read.unfolding[i_old].base][pt_read.unfolding[i_old].ptr] = pt_read.unfolding[i].base;
					} else {
						pt_layers[i][pt_read.unfolding[i].base][pt_read.unfolding[i].ptr] = pt_read.phys_addr;
						break;
					}
				}

				pages[pt_read.phys_addr] = mem_label;
			}
		}
	}

	std::ofstream tmp_dot("tmp.dot");

	tmp_dot << "digraph G {\n"
	<< "fontname=\"Helvetica,Arial,sans-serif\"\n"
	<< "node [fontname=\"Helvetica,Arial,sans-serif\"]\n"
	<< "edge [fontname=\"Helvetica,Arial,sans-serif\"]\n"
	<< "graph [\n"
	<< "rankdir = \"LR\"\n"
	<< "ranksep = 1;\n"
	<< "];\n";

	for (size_t i = 0; i < PAGE_TABLE_LEVELS-1; ++ i) {
		tmp_dot << "subgraph cluster_"<<i<<" {\n"
		<< "node [style=filled];\n"
		<< "label = \""<<layer_labels[i]<<"\";\n"
		<< "rank=1;\n"
		<< "color=lightgrey;\n";

		for (auto& page_map_pair : pt_layers[i]) {
			tmp_dot << "\""<<std::hex<<std::setw(16)<<std::setfill('0')<<page_map_pair.first<<std::dec<<"\" [\n"
			<< "shape = \"record\"\n"
			<< "label = \"<"<<std::hex<<std::setw(16)<<std::setfill('0')<<page_map_pair.first<<std::dec<<">"
			<<std::hex<<std::setw(16)<<std::setfill('0')<<page_map_pair.first<<std::dec;
			for (auto& entry_pair : page_map_pair.second) {
				if (page_map_pair.first == entry_pair.first) {
					continue;
				}
				tmp_dot<<"|<"<<std::hex<<std::setw(16)<<std::setfill('0')<<entry_pair.first<<std::dec<<"> "
					<<std::hex<<std::setw(16)<<std::setfill('0')<<entry_pair.first<<std::dec<<std::endl;
			}

			tmp_dot << "\"];\n";
		}

		tmp_dot << "}\n";
	}

	tmp_dot << "subgraph cluster_"<<PAGE_TABLE_LEVELS-1<<" {\n"
	<< "node [style=filled];\n"
	<< "label = \""<<layer_labels[PAGE_TABLE_LEVELS-1]<<"\";\n"
	<< "rank=1;\n"
	<< "color=lightgrey;\n";

	for (auto& page_map_pair : pt_layers[PAGE_TABLE_LEVELS-1]) {
		tmp_dot << "\""<<std::hex<<std::setw(16)<<std::setfill('0')<<page_map_pair.first<<std::dec<<"\" [\n"
		<< "shape = \"record\"\n"
		<< "label = \"<"<<std::hex<<std::setw(16)<<std::setfill('0')<<page_map_pair.first<<std::dec<<">"
		<<std::hex<<std::setw(16)<<std::setfill('0')<<page_map_pair.first<<std::dec;
		for (auto& entry_pair : page_map_pair.second) {
			tmp_dot<<"|{"
				<<std::hex<<std::setw(16)<<std::setfill('0')<<entry_pair.first<<std::dec<<std::endl
				<<"|"<<std::hex<<std::setw(16)<<std::setfill('0')<<entry_pair.second<<std::dec<<std::endl
				<<"|"<<pages[entry_pair.second]<<"}\n";
		}

		tmp_dot << "\"];\n";
	}

	tmp_dot << "}\n";

	for (size_t i = 0; i < PAGE_TABLE_LEVELS-1; ++ i) {
		for (auto& page_map_pair : pt_layers[i]) {
			for (auto& link : page_map_pair.second) {
				tmp_dot
					<<"\""<<std::hex<<std::setw(16)<<std::setfill('0')<<page_map_pair.first<<std::dec
					<<"\":\""<<std::hex<<std::setw(16)<<std::setfill('0')<<link.first<<std::dec
					<<"\":e -> \""<<std::hex<<std::setw(16)<<std::setfill('0')<<link.second<<std::dec
					<<"\":\""<<std::hex<<std::setw(16)<<std::setfill('0')<<link.second<<std::dec
					<<"\":w;\n";
			}
		}
	}

	tmp_dot << "}\n";
	tmp_dot.close();

	std::cout << "starting graphviz\n";
	std::system("dot -v -Gnslimit=2 -Gnslimit1=2 -Gmaxiter=5000 -Tsvg tmp.dot -o out.svg");

	return 0;
}


