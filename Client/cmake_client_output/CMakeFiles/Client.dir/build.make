# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = D:\CLion\bin\cmake\win\bin\cmake.exe

# The command to remove a file.
RM = D:\CLion\bin\cmake\win\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\CLion\ClionCPPfile\ChartProgram

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\CLion\ClionCPPfile\ChartProgram\cmake-build-debug

# Include any dependencies generated for this target.
include ../Client/cmake_client_output/CMakeFiles/Client.dir/depend.make
# Include the progress variables for this target.
include ../Client/cmake_client_output/CMakeFiles/Client.dir/progress.make

# Include the compile flags for this target's objects.
include ../Client/cmake_client_output/CMakeFiles/Client.dir/flags.make

../Client/cmake_client_output/CMakeFiles/Client.dir/main.cpp.obj: ../Client/cmake_client_output/CMakeFiles/Client.dir/flags.make
../Client/cmake_client_output/CMakeFiles/Client.dir/main.cpp.obj: ../Client/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\CLion\ClionCPPfile\ChartProgram\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ../Client/cmake_client_output/CMakeFiles/Client.dir/main.cpp.obj"
	cd /d D:\CLion\ClionCPPfile\ChartProgram\Client\cmake_client_output && D:\Vscode\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Client.dir\main.cpp.obj -c D:\CLion\ClionCPPfile\ChartProgram\Client\main.cpp

../Client/cmake_client_output/CMakeFiles/Client.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Client.dir/main.cpp.i"
	cd /d D:\CLion\ClionCPPfile\ChartProgram\Client\cmake_client_output && D:\Vscode\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\CLion\ClionCPPfile\ChartProgram\Client\main.cpp > CMakeFiles\Client.dir\main.cpp.i

../Client/cmake_client_output/CMakeFiles/Client.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Client.dir/main.cpp.s"
	cd /d D:\CLion\ClionCPPfile\ChartProgram\Client\cmake_client_output && D:\Vscode\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\CLion\ClionCPPfile\ChartProgram\Client\main.cpp -o CMakeFiles\Client.dir\main.cpp.s

# Object files for target Client
Client_OBJECTS = \
"CMakeFiles/Client.dir/main.cpp.obj"

# External object files for target Client
Client_EXTERNAL_OBJECTS =

../Client/cmake_client_output/Client.exe: ../Client/cmake_client_output/CMakeFiles/Client.dir/main.cpp.obj
../Client/cmake_client_output/Client.exe: ../Client/cmake_client_output/CMakeFiles/Client.dir/build.make
../Client/cmake_client_output/Client.exe: ../Client/cmake_client_output/CMakeFiles/Client.dir/linklibs.rsp
../Client/cmake_client_output/Client.exe: ../Client/cmake_client_output/CMakeFiles/Client.dir/objects1.rsp
../Client/cmake_client_output/Client.exe: ../Client/cmake_client_output/CMakeFiles/Client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\CLion\ClionCPPfile\ChartProgram\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Client.exe"
	cd /d D:\CLion\ClionCPPfile\ChartProgram\Client\cmake_client_output && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Client.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
../Client/cmake_client_output/CMakeFiles/Client.dir/build: ../Client/cmake_client_output/Client.exe
.PHONY : ../Client/cmake_client_output/CMakeFiles/Client.dir/build

../Client/cmake_client_output/CMakeFiles/Client.dir/clean:
	cd /d D:\CLion\ClionCPPfile\ChartProgram\Client\cmake_client_output && $(CMAKE_COMMAND) -P CMakeFiles\Client.dir\cmake_clean.cmake
.PHONY : ../Client/cmake_client_output/CMakeFiles/Client.dir/clean

../Client/cmake_client_output/CMakeFiles/Client.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\CLion\ClionCPPfile\ChartProgram D:\CLion\ClionCPPfile\ChartProgram\Client D:\CLion\ClionCPPfile\ChartProgram\cmake-build-debug D:\CLion\ClionCPPfile\ChartProgram\Client\cmake_client_output D:\CLion\ClionCPPfile\ChartProgram\Client\cmake_client_output\CMakeFiles\Client.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : ../Client/cmake_client_output/CMakeFiles/Client.dir/depend

