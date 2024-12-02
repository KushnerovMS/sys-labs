cmake_minimum_required(VERSION 3.15...3.30) 

project(pm_viz
		VERSION 0.1
		DESCRIPTION "Pagemap parser, that make graph from /proc/<id>/pagemap"
		LANGUAGES C CXX)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_executable(pm_viz src/pm_parser.cpp)
target_include_directories(pm_viz PRIVATE include)
target_include_directories(pm_viz PRIVATE .)
