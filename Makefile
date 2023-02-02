# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/parallels/opencv/samples/cpp/example_cmake

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/parallels/opencv/samples/cpp/example_cmake

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/parallels/opencv/samples/cpp/example_cmake/CMakeFiles /home/parallels/opencv/samples/cpp/example_cmake/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/parallels/opencv/samples/cpp/example_cmake/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named udp_srv

# Build rule for target.
udp_srv: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 udp_srv
.PHONY : udp_srv

# fast build rule for target.
udp_srv/fast:
	$(MAKE) -f CMakeFiles/udp_srv.dir/build.make CMakeFiles/udp_srv.dir/build
.PHONY : udp_srv/fast

#=============================================================================
# Target rules for targets named server2

# Build rule for target.
server2: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 server2
.PHONY : server2

# fast build rule for target.
server2/fast:
	$(MAKE) -f CMakeFiles/server2.dir/build.make CMakeFiles/server2.dir/build
.PHONY : server2/fast

#=============================================================================
# Target rules for targets named server1

# Build rule for target.
server1: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 server1
.PHONY : server1

# fast build rule for target.
server1/fast:
	$(MAKE) -f CMakeFiles/server1.dir/build.make CMakeFiles/server1.dir/build
.PHONY : server1/fast

#=============================================================================
# Target rules for targets named server

# Build rule for target.
server: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 server
.PHONY : server

# fast build rule for target.
server/fast:
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/build
.PHONY : server/fast

#=============================================================================
# Target rules for targets named udp_cli

# Build rule for target.
udp_cli: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 udp_cli
.PHONY : udp_cli

# fast build rule for target.
udp_cli/fast:
	$(MAKE) -f CMakeFiles/udp_cli.dir/build.make CMakeFiles/udp_cli.dir/build
.PHONY : udp_cli/fast

#=============================================================================
# Target rules for targets named client2

# Build rule for target.
client2: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 client2
.PHONY : client2

# fast build rule for target.
client2/fast:
	$(MAKE) -f CMakeFiles/client2.dir/build.make CMakeFiles/client2.dir/build
.PHONY : client2/fast

#=============================================================================
# Target rules for targets named client1

# Build rule for target.
client1: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 client1
.PHONY : client1

# fast build rule for target.
client1/fast:
	$(MAKE) -f CMakeFiles/client1.dir/build.make CMakeFiles/client1.dir/build
.PHONY : client1/fast

#=============================================================================
# Target rules for targets named client

# Build rule for target.
client: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 client
.PHONY : client

# fast build rule for target.
client/fast:
	$(MAKE) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/build
.PHONY : client/fast

#=============================================================================
# Target rules for targets named main

# Build rule for target.
main: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 main
.PHONY : main

# fast build rule for target.
main/fast:
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/build
.PHONY : main/fast

#=============================================================================
# Target rules for targets named opencv_example

# Build rule for target.
opencv_example: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 opencv_example
.PHONY : opencv_example

# fast build rule for target.
opencv_example/fast:
	$(MAKE) -f CMakeFiles/opencv_example.dir/build.make CMakeFiles/opencv_example.dir/build
.PHONY : opencv_example/fast

client.o: client.cpp.o

.PHONY : client.o

# target to build an object file
client.cpp.o:
	$(MAKE) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/client.cpp.o
.PHONY : client.cpp.o

client.i: client.cpp.i

.PHONY : client.i

# target to preprocess a source file
client.cpp.i:
	$(MAKE) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/client.cpp.i
.PHONY : client.cpp.i

client.s: client.cpp.s

.PHONY : client.s

# target to generate assembly for a file
client.cpp.s:
	$(MAKE) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/client.cpp.s
.PHONY : client.cpp.s

client1.o: client1.cpp.o

.PHONY : client1.o

# target to build an object file
client1.cpp.o:
	$(MAKE) -f CMakeFiles/client1.dir/build.make CMakeFiles/client1.dir/client1.cpp.o
.PHONY : client1.cpp.o

client1.i: client1.cpp.i

.PHONY : client1.i

# target to preprocess a source file
client1.cpp.i:
	$(MAKE) -f CMakeFiles/client1.dir/build.make CMakeFiles/client1.dir/client1.cpp.i
.PHONY : client1.cpp.i

client1.s: client1.cpp.s

.PHONY : client1.s

# target to generate assembly for a file
client1.cpp.s:
	$(MAKE) -f CMakeFiles/client1.dir/build.make CMakeFiles/client1.dir/client1.cpp.s
.PHONY : client1.cpp.s

client2.o: client2.cpp.o

.PHONY : client2.o

# target to build an object file
client2.cpp.o:
	$(MAKE) -f CMakeFiles/client2.dir/build.make CMakeFiles/client2.dir/client2.cpp.o
.PHONY : client2.cpp.o

client2.i: client2.cpp.i

.PHONY : client2.i

# target to preprocess a source file
client2.cpp.i:
	$(MAKE) -f CMakeFiles/client2.dir/build.make CMakeFiles/client2.dir/client2.cpp.i
.PHONY : client2.cpp.i

client2.s: client2.cpp.s

.PHONY : client2.s

# target to generate assembly for a file
client2.cpp.s:
	$(MAKE) -f CMakeFiles/client2.dir/build.make CMakeFiles/client2.dir/client2.cpp.s
.PHONY : client2.cpp.s

example.o: example.cpp.o

.PHONY : example.o

# target to build an object file
example.cpp.o:
	$(MAKE) -f CMakeFiles/opencv_example.dir/build.make CMakeFiles/opencv_example.dir/example.cpp.o
.PHONY : example.cpp.o

example.i: example.cpp.i

.PHONY : example.i

# target to preprocess a source file
example.cpp.i:
	$(MAKE) -f CMakeFiles/opencv_example.dir/build.make CMakeFiles/opencv_example.dir/example.cpp.i
.PHONY : example.cpp.i

example.s: example.cpp.s

.PHONY : example.s

# target to generate assembly for a file
example.cpp.s:
	$(MAKE) -f CMakeFiles/opencv_example.dir/build.make CMakeFiles/opencv_example.dir/example.cpp.s
.PHONY : example.cpp.s

main.o: main.cpp.o

.PHONY : main.o

# target to build an object file
main.cpp.o:
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/main.cpp.o
.PHONY : main.cpp.o

main.i: main.cpp.i

.PHONY : main.i

# target to preprocess a source file
main.cpp.i:
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/main.cpp.i
.PHONY : main.cpp.i

main.s: main.cpp.s

.PHONY : main.s

# target to generate assembly for a file
main.cpp.s:
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/main.cpp.s
.PHONY : main.cpp.s

server.o: server.cpp.o

.PHONY : server.o

# target to build an object file
server.cpp.o:
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/server.cpp.o
.PHONY : server.cpp.o

server.i: server.cpp.i

.PHONY : server.i

# target to preprocess a source file
server.cpp.i:
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/server.cpp.i
.PHONY : server.cpp.i

server.s: server.cpp.s

.PHONY : server.s

# target to generate assembly for a file
server.cpp.s:
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/server.cpp.s
.PHONY : server.cpp.s

server1.o: server1.cpp.o

.PHONY : server1.o

# target to build an object file
server1.cpp.o:
	$(MAKE) -f CMakeFiles/server1.dir/build.make CMakeFiles/server1.dir/server1.cpp.o
.PHONY : server1.cpp.o

server1.i: server1.cpp.i

.PHONY : server1.i

# target to preprocess a source file
server1.cpp.i:
	$(MAKE) -f CMakeFiles/server1.dir/build.make CMakeFiles/server1.dir/server1.cpp.i
.PHONY : server1.cpp.i

server1.s: server1.cpp.s

.PHONY : server1.s

# target to generate assembly for a file
server1.cpp.s:
	$(MAKE) -f CMakeFiles/server1.dir/build.make CMakeFiles/server1.dir/server1.cpp.s
.PHONY : server1.cpp.s

server2.o: server2.cpp.o

.PHONY : server2.o

# target to build an object file
server2.cpp.o:
	$(MAKE) -f CMakeFiles/server2.dir/build.make CMakeFiles/server2.dir/server2.cpp.o
.PHONY : server2.cpp.o

server2.i: server2.cpp.i

.PHONY : server2.i

# target to preprocess a source file
server2.cpp.i:
	$(MAKE) -f CMakeFiles/server2.dir/build.make CMakeFiles/server2.dir/server2.cpp.i
.PHONY : server2.cpp.i

server2.s: server2.cpp.s

.PHONY : server2.s

# target to generate assembly for a file
server2.cpp.s:
	$(MAKE) -f CMakeFiles/server2.dir/build.make CMakeFiles/server2.dir/server2.cpp.s
.PHONY : server2.cpp.s

udp_cli.o: udp_cli.cpp.o

.PHONY : udp_cli.o

# target to build an object file
udp_cli.cpp.o:
	$(MAKE) -f CMakeFiles/udp_cli.dir/build.make CMakeFiles/udp_cli.dir/udp_cli.cpp.o
.PHONY : udp_cli.cpp.o

udp_cli.i: udp_cli.cpp.i

.PHONY : udp_cli.i

# target to preprocess a source file
udp_cli.cpp.i:
	$(MAKE) -f CMakeFiles/udp_cli.dir/build.make CMakeFiles/udp_cli.dir/udp_cli.cpp.i
.PHONY : udp_cli.cpp.i

udp_cli.s: udp_cli.cpp.s

.PHONY : udp_cli.s

# target to generate assembly for a file
udp_cli.cpp.s:
	$(MAKE) -f CMakeFiles/udp_cli.dir/build.make CMakeFiles/udp_cli.dir/udp_cli.cpp.s
.PHONY : udp_cli.cpp.s

udp_srv.o: udp_srv.cpp.o

.PHONY : udp_srv.o

# target to build an object file
udp_srv.cpp.o:
	$(MAKE) -f CMakeFiles/udp_srv.dir/build.make CMakeFiles/udp_srv.dir/udp_srv.cpp.o
.PHONY : udp_srv.cpp.o

udp_srv.i: udp_srv.cpp.i

.PHONY : udp_srv.i

# target to preprocess a source file
udp_srv.cpp.i:
	$(MAKE) -f CMakeFiles/udp_srv.dir/build.make CMakeFiles/udp_srv.dir/udp_srv.cpp.i
.PHONY : udp_srv.cpp.i

udp_srv.s: udp_srv.cpp.s

.PHONY : udp_srv.s

# target to generate assembly for a file
udp_srv.cpp.s:
	$(MAKE) -f CMakeFiles/udp_srv.dir/build.make CMakeFiles/udp_srv.dir/udp_srv.cpp.s
.PHONY : udp_srv.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... edit_cache"
	@echo "... udp_srv"
	@echo "... server2"
	@echo "... server1"
	@echo "... server"
	@echo "... udp_cli"
	@echo "... client2"
	@echo "... client1"
	@echo "... client"
	@echo "... main"
	@echo "... opencv_example"
	@echo "... client.o"
	@echo "... client.i"
	@echo "... client.s"
	@echo "... client1.o"
	@echo "... client1.i"
	@echo "... client1.s"
	@echo "... client2.o"
	@echo "... client2.i"
	@echo "... client2.s"
	@echo "... example.o"
	@echo "... example.i"
	@echo "... example.s"
	@echo "... main.o"
	@echo "... main.i"
	@echo "... main.s"
	@echo "... server.o"
	@echo "... server.i"
	@echo "... server.s"
	@echo "... server1.o"
	@echo "... server1.i"
	@echo "... server1.s"
	@echo "... server2.o"
	@echo "... server2.i"
	@echo "... server2.s"
	@echo "... udp_cli.o"
	@echo "... udp_cli.i"
	@echo "... udp_cli.s"
	@echo "... udp_srv.o"
	@echo "... udp_srv.i"
	@echo "... udp_srv.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

