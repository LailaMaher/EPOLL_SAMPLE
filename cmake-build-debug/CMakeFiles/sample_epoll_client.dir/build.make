# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_COMMAND = /home/oranngeoai/Downloads/clion-2017.3.1/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/oranngeoai/Downloads/clion-2017.3.1/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/oranngeoai/Documents/project/sample_epoll

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/oranngeoai/Documents/project/sample_epoll/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/sample_epoll_client.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/sample_epoll_client.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sample_epoll_client.dir/flags.make

CMakeFiles/sample_epoll_client.dir/Client.cpp.o: CMakeFiles/sample_epoll_client.dir/flags.make
CMakeFiles/sample_epoll_client.dir/Client.cpp.o: ../Client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/oranngeoai/Documents/project/sample_epoll/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sample_epoll_client.dir/Client.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sample_epoll_client.dir/Client.cpp.o -c /home/oranngeoai/Documents/project/sample_epoll/Client.cpp

CMakeFiles/sample_epoll_client.dir/Client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sample_epoll_client.dir/Client.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/oranngeoai/Documents/project/sample_epoll/Client.cpp > CMakeFiles/sample_epoll_client.dir/Client.cpp.i

CMakeFiles/sample_epoll_client.dir/Client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sample_epoll_client.dir/Client.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/oranngeoai/Documents/project/sample_epoll/Client.cpp -o CMakeFiles/sample_epoll_client.dir/Client.cpp.s

CMakeFiles/sample_epoll_client.dir/Client.cpp.o.requires:

.PHONY : CMakeFiles/sample_epoll_client.dir/Client.cpp.o.requires

CMakeFiles/sample_epoll_client.dir/Client.cpp.o.provides: CMakeFiles/sample_epoll_client.dir/Client.cpp.o.requires
	$(MAKE) -f CMakeFiles/sample_epoll_client.dir/build.make CMakeFiles/sample_epoll_client.dir/Client.cpp.o.provides.build
.PHONY : CMakeFiles/sample_epoll_client.dir/Client.cpp.o.provides

CMakeFiles/sample_epoll_client.dir/Client.cpp.o.provides.build: CMakeFiles/sample_epoll_client.dir/Client.cpp.o


CMakeFiles/sample_epoll_client.dir/client_main.cpp.o: CMakeFiles/sample_epoll_client.dir/flags.make
CMakeFiles/sample_epoll_client.dir/client_main.cpp.o: ../client_main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/oranngeoai/Documents/project/sample_epoll/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/sample_epoll_client.dir/client_main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sample_epoll_client.dir/client_main.cpp.o -c /home/oranngeoai/Documents/project/sample_epoll/client_main.cpp

CMakeFiles/sample_epoll_client.dir/client_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sample_epoll_client.dir/client_main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/oranngeoai/Documents/project/sample_epoll/client_main.cpp > CMakeFiles/sample_epoll_client.dir/client_main.cpp.i

CMakeFiles/sample_epoll_client.dir/client_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sample_epoll_client.dir/client_main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/oranngeoai/Documents/project/sample_epoll/client_main.cpp -o CMakeFiles/sample_epoll_client.dir/client_main.cpp.s

CMakeFiles/sample_epoll_client.dir/client_main.cpp.o.requires:

.PHONY : CMakeFiles/sample_epoll_client.dir/client_main.cpp.o.requires

CMakeFiles/sample_epoll_client.dir/client_main.cpp.o.provides: CMakeFiles/sample_epoll_client.dir/client_main.cpp.o.requires
	$(MAKE) -f CMakeFiles/sample_epoll_client.dir/build.make CMakeFiles/sample_epoll_client.dir/client_main.cpp.o.provides.build
.PHONY : CMakeFiles/sample_epoll_client.dir/client_main.cpp.o.provides

CMakeFiles/sample_epoll_client.dir/client_main.cpp.o.provides.build: CMakeFiles/sample_epoll_client.dir/client_main.cpp.o


# Object files for target sample_epoll_client
sample_epoll_client_OBJECTS = \
"CMakeFiles/sample_epoll_client.dir/Client.cpp.o" \
"CMakeFiles/sample_epoll_client.dir/client_main.cpp.o"

# External object files for target sample_epoll_client
sample_epoll_client_EXTERNAL_OBJECTS =

sample_epoll_client: CMakeFiles/sample_epoll_client.dir/Client.cpp.o
sample_epoll_client: CMakeFiles/sample_epoll_client.dir/client_main.cpp.o
sample_epoll_client: CMakeFiles/sample_epoll_client.dir/build.make
sample_epoll_client: CMakeFiles/sample_epoll_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/oranngeoai/Documents/project/sample_epoll/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable sample_epoll_client"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sample_epoll_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sample_epoll_client.dir/build: sample_epoll_client

.PHONY : CMakeFiles/sample_epoll_client.dir/build

CMakeFiles/sample_epoll_client.dir/requires: CMakeFiles/sample_epoll_client.dir/Client.cpp.o.requires
CMakeFiles/sample_epoll_client.dir/requires: CMakeFiles/sample_epoll_client.dir/client_main.cpp.o.requires

.PHONY : CMakeFiles/sample_epoll_client.dir/requires

CMakeFiles/sample_epoll_client.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sample_epoll_client.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sample_epoll_client.dir/clean

CMakeFiles/sample_epoll_client.dir/depend:
	cd /home/oranngeoai/Documents/project/sample_epoll/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/oranngeoai/Documents/project/sample_epoll /home/oranngeoai/Documents/project/sample_epoll /home/oranngeoai/Documents/project/sample_epoll/cmake-build-debug /home/oranngeoai/Documents/project/sample_epoll/cmake-build-debug /home/oranngeoai/Documents/project/sample_epoll/cmake-build-debug/CMakeFiles/sample_epoll_client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sample_epoll_client.dir/depend

