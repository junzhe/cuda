# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/junzhez/git/c++/jsoncpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/junzhez/git/c++/jsoncpp

# Include any dependencies generated for this target.
include src/test_lib_json/CMakeFiles/test_lib_json.dir/depend.make

# Include the progress variables for this target.
include src/test_lib_json/CMakeFiles/test_lib_json.dir/progress.make

# Include the compile flags for this target's objects.
include src/test_lib_json/CMakeFiles/test_lib_json.dir/flags.make

src/test_lib_json/CMakeFiles/test_lib_json.dir/jsontest.cpp.o: src/test_lib_json/CMakeFiles/test_lib_json.dir/flags.make
src/test_lib_json/CMakeFiles/test_lib_json.dir/jsontest.cpp.o: src/test_lib_json/jsontest.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/junzhez/git/c++/jsoncpp/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/test_lib_json/CMakeFiles/test_lib_json.dir/jsontest.cpp.o"
	cd /home/junzhez/git/c++/jsoncpp/src/test_lib_json && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test_lib_json.dir/jsontest.cpp.o -c /home/junzhez/git/c++/jsoncpp/src/test_lib_json/jsontest.cpp

src/test_lib_json/CMakeFiles/test_lib_json.dir/jsontest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_lib_json.dir/jsontest.cpp.i"
	cd /home/junzhez/git/c++/jsoncpp/src/test_lib_json && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/junzhez/git/c++/jsoncpp/src/test_lib_json/jsontest.cpp > CMakeFiles/test_lib_json.dir/jsontest.cpp.i

src/test_lib_json/CMakeFiles/test_lib_json.dir/jsontest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_lib_json.dir/jsontest.cpp.s"
	cd /home/junzhez/git/c++/jsoncpp/src/test_lib_json && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/junzhez/git/c++/jsoncpp/src/test_lib_json/jsontest.cpp -o CMakeFiles/test_lib_json.dir/jsontest.cpp.s

src/test_lib_json/CMakeFiles/test_lib_json.dir/jsontest.cpp.o.requires:
.PHONY : src/test_lib_json/CMakeFiles/test_lib_json.dir/jsontest.cpp.o.requires

src/test_lib_json/CMakeFiles/test_lib_json.dir/jsontest.cpp.o.provides: src/test_lib_json/CMakeFiles/test_lib_json.dir/jsontest.cpp.o.requires
	$(MAKE) -f src/test_lib_json/CMakeFiles/test_lib_json.dir/build.make src/test_lib_json/CMakeFiles/test_lib_json.dir/jsontest.cpp.o.provides.build
.PHONY : src/test_lib_json/CMakeFiles/test_lib_json.dir/jsontest.cpp.o.provides

src/test_lib_json/CMakeFiles/test_lib_json.dir/jsontest.cpp.o.provides.build: src/test_lib_json/CMakeFiles/test_lib_json.dir/jsontest.cpp.o

src/test_lib_json/CMakeFiles/test_lib_json.dir/main.cpp.o: src/test_lib_json/CMakeFiles/test_lib_json.dir/flags.make
src/test_lib_json/CMakeFiles/test_lib_json.dir/main.cpp.o: src/test_lib_json/main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/junzhez/git/c++/jsoncpp/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/test_lib_json/CMakeFiles/test_lib_json.dir/main.cpp.o"
	cd /home/junzhez/git/c++/jsoncpp/src/test_lib_json && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test_lib_json.dir/main.cpp.o -c /home/junzhez/git/c++/jsoncpp/src/test_lib_json/main.cpp

src/test_lib_json/CMakeFiles/test_lib_json.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_lib_json.dir/main.cpp.i"
	cd /home/junzhez/git/c++/jsoncpp/src/test_lib_json && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/junzhez/git/c++/jsoncpp/src/test_lib_json/main.cpp > CMakeFiles/test_lib_json.dir/main.cpp.i

src/test_lib_json/CMakeFiles/test_lib_json.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_lib_json.dir/main.cpp.s"
	cd /home/junzhez/git/c++/jsoncpp/src/test_lib_json && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/junzhez/git/c++/jsoncpp/src/test_lib_json/main.cpp -o CMakeFiles/test_lib_json.dir/main.cpp.s

src/test_lib_json/CMakeFiles/test_lib_json.dir/main.cpp.o.requires:
.PHONY : src/test_lib_json/CMakeFiles/test_lib_json.dir/main.cpp.o.requires

src/test_lib_json/CMakeFiles/test_lib_json.dir/main.cpp.o.provides: src/test_lib_json/CMakeFiles/test_lib_json.dir/main.cpp.o.requires
	$(MAKE) -f src/test_lib_json/CMakeFiles/test_lib_json.dir/build.make src/test_lib_json/CMakeFiles/test_lib_json.dir/main.cpp.o.provides.build
.PHONY : src/test_lib_json/CMakeFiles/test_lib_json.dir/main.cpp.o.provides

src/test_lib_json/CMakeFiles/test_lib_json.dir/main.cpp.o.provides.build: src/test_lib_json/CMakeFiles/test_lib_json.dir/main.cpp.o

# Object files for target test_lib_json
test_lib_json_OBJECTS = \
"CMakeFiles/test_lib_json.dir/jsontest.cpp.o" \
"CMakeFiles/test_lib_json.dir/main.cpp.o"

# External object files for target test_lib_json
test_lib_json_EXTERNAL_OBJECTS =

test_lib_json: src/test_lib_json/CMakeFiles/test_lib_json.dir/jsontest.cpp.o
test_lib_json: src/test_lib_json/CMakeFiles/test_lib_json.dir/main.cpp.o
test_lib_json: src/lib_json/libjson_cpp.so.0.5.0
test_lib_json: src/test_lib_json/CMakeFiles/test_lib_json.dir/build.make
test_lib_json: src/test_lib_json/CMakeFiles/test_lib_json.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../test_lib_json"
	cd /home/junzhez/git/c++/jsoncpp/src/test_lib_json && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_lib_json.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/test_lib_json/CMakeFiles/test_lib_json.dir/build: test_lib_json
.PHONY : src/test_lib_json/CMakeFiles/test_lib_json.dir/build

src/test_lib_json/CMakeFiles/test_lib_json.dir/requires: src/test_lib_json/CMakeFiles/test_lib_json.dir/jsontest.cpp.o.requires
src/test_lib_json/CMakeFiles/test_lib_json.dir/requires: src/test_lib_json/CMakeFiles/test_lib_json.dir/main.cpp.o.requires
.PHONY : src/test_lib_json/CMakeFiles/test_lib_json.dir/requires

src/test_lib_json/CMakeFiles/test_lib_json.dir/clean:
	cd /home/junzhez/git/c++/jsoncpp/src/test_lib_json && $(CMAKE_COMMAND) -P CMakeFiles/test_lib_json.dir/cmake_clean.cmake
.PHONY : src/test_lib_json/CMakeFiles/test_lib_json.dir/clean

src/test_lib_json/CMakeFiles/test_lib_json.dir/depend:
	cd /home/junzhez/git/c++/jsoncpp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/junzhez/git/c++/jsoncpp /home/junzhez/git/c++/jsoncpp/src/test_lib_json /home/junzhez/git/c++/jsoncpp /home/junzhez/git/c++/jsoncpp/src/test_lib_json /home/junzhez/git/c++/jsoncpp/src/test_lib_json/CMakeFiles/test_lib_json.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/test_lib_json/CMakeFiles/test_lib_json.dir/depend

