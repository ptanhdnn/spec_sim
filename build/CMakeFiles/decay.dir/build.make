# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/aphan/g4work/spec_sim

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/aphan/g4work/spec_sim/build

# Include any dependencies generated for this target.
include CMakeFiles/decay.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/decay.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/decay.dir/flags.make

CMakeFiles/decay.dir/decay.cc.o: CMakeFiles/decay.dir/flags.make
CMakeFiles/decay.dir/decay.cc.o: ../decay.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aphan/g4work/spec_sim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/decay.dir/decay.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/decay.dir/decay.cc.o -c /home/aphan/g4work/spec_sim/decay.cc

CMakeFiles/decay.dir/decay.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/decay.dir/decay.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/aphan/g4work/spec_sim/decay.cc > CMakeFiles/decay.dir/decay.cc.i

CMakeFiles/decay.dir/decay.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/decay.dir/decay.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/aphan/g4work/spec_sim/decay.cc -o CMakeFiles/decay.dir/decay.cc.s

CMakeFiles/decay.dir/ActionInitialization.cc.o: CMakeFiles/decay.dir/flags.make
CMakeFiles/decay.dir/ActionInitialization.cc.o: ../ActionInitialization.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aphan/g4work/spec_sim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/decay.dir/ActionInitialization.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/decay.dir/ActionInitialization.cc.o -c /home/aphan/g4work/spec_sim/ActionInitialization.cc

CMakeFiles/decay.dir/ActionInitialization.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/decay.dir/ActionInitialization.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/aphan/g4work/spec_sim/ActionInitialization.cc > CMakeFiles/decay.dir/ActionInitialization.cc.i

CMakeFiles/decay.dir/ActionInitialization.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/decay.dir/ActionInitialization.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/aphan/g4work/spec_sim/ActionInitialization.cc -o CMakeFiles/decay.dir/ActionInitialization.cc.s

CMakeFiles/decay.dir/DetectorConstruction.cc.o: CMakeFiles/decay.dir/flags.make
CMakeFiles/decay.dir/DetectorConstruction.cc.o: ../DetectorConstruction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aphan/g4work/spec_sim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/decay.dir/DetectorConstruction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/decay.dir/DetectorConstruction.cc.o -c /home/aphan/g4work/spec_sim/DetectorConstruction.cc

CMakeFiles/decay.dir/DetectorConstruction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/decay.dir/DetectorConstruction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/aphan/g4work/spec_sim/DetectorConstruction.cc > CMakeFiles/decay.dir/DetectorConstruction.cc.i

CMakeFiles/decay.dir/DetectorConstruction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/decay.dir/DetectorConstruction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/aphan/g4work/spec_sim/DetectorConstruction.cc -o CMakeFiles/decay.dir/DetectorConstruction.cc.s

CMakeFiles/decay.dir/EventAction.cc.o: CMakeFiles/decay.dir/flags.make
CMakeFiles/decay.dir/EventAction.cc.o: ../EventAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aphan/g4work/spec_sim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/decay.dir/EventAction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/decay.dir/EventAction.cc.o -c /home/aphan/g4work/spec_sim/EventAction.cc

CMakeFiles/decay.dir/EventAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/decay.dir/EventAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/aphan/g4work/spec_sim/EventAction.cc > CMakeFiles/decay.dir/EventAction.cc.i

CMakeFiles/decay.dir/EventAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/decay.dir/EventAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/aphan/g4work/spec_sim/EventAction.cc -o CMakeFiles/decay.dir/EventAction.cc.s

CMakeFiles/decay.dir/HistoManager.cc.o: CMakeFiles/decay.dir/flags.make
CMakeFiles/decay.dir/HistoManager.cc.o: ../HistoManager.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aphan/g4work/spec_sim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/decay.dir/HistoManager.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/decay.dir/HistoManager.cc.o -c /home/aphan/g4work/spec_sim/HistoManager.cc

CMakeFiles/decay.dir/HistoManager.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/decay.dir/HistoManager.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/aphan/g4work/spec_sim/HistoManager.cc > CMakeFiles/decay.dir/HistoManager.cc.i

CMakeFiles/decay.dir/HistoManager.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/decay.dir/HistoManager.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/aphan/g4work/spec_sim/HistoManager.cc -o CMakeFiles/decay.dir/HistoManager.cc.s

CMakeFiles/decay.dir/PhysicsList.cc.o: CMakeFiles/decay.dir/flags.make
CMakeFiles/decay.dir/PhysicsList.cc.o: ../PhysicsList.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aphan/g4work/spec_sim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/decay.dir/PhysicsList.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/decay.dir/PhysicsList.cc.o -c /home/aphan/g4work/spec_sim/PhysicsList.cc

CMakeFiles/decay.dir/PhysicsList.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/decay.dir/PhysicsList.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/aphan/g4work/spec_sim/PhysicsList.cc > CMakeFiles/decay.dir/PhysicsList.cc.i

CMakeFiles/decay.dir/PhysicsList.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/decay.dir/PhysicsList.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/aphan/g4work/spec_sim/PhysicsList.cc -o CMakeFiles/decay.dir/PhysicsList.cc.s

CMakeFiles/decay.dir/PrimaryGeneratorAction.cc.o: CMakeFiles/decay.dir/flags.make
CMakeFiles/decay.dir/PrimaryGeneratorAction.cc.o: ../PrimaryGeneratorAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aphan/g4work/spec_sim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/decay.dir/PrimaryGeneratorAction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/decay.dir/PrimaryGeneratorAction.cc.o -c /home/aphan/g4work/spec_sim/PrimaryGeneratorAction.cc

CMakeFiles/decay.dir/PrimaryGeneratorAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/decay.dir/PrimaryGeneratorAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/aphan/g4work/spec_sim/PrimaryGeneratorAction.cc > CMakeFiles/decay.dir/PrimaryGeneratorAction.cc.i

CMakeFiles/decay.dir/PrimaryGeneratorAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/decay.dir/PrimaryGeneratorAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/aphan/g4work/spec_sim/PrimaryGeneratorAction.cc -o CMakeFiles/decay.dir/PrimaryGeneratorAction.cc.s

CMakeFiles/decay.dir/Run.cc.o: CMakeFiles/decay.dir/flags.make
CMakeFiles/decay.dir/Run.cc.o: ../Run.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aphan/g4work/spec_sim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/decay.dir/Run.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/decay.dir/Run.cc.o -c /home/aphan/g4work/spec_sim/Run.cc

CMakeFiles/decay.dir/Run.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/decay.dir/Run.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/aphan/g4work/spec_sim/Run.cc > CMakeFiles/decay.dir/Run.cc.i

CMakeFiles/decay.dir/Run.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/decay.dir/Run.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/aphan/g4work/spec_sim/Run.cc -o CMakeFiles/decay.dir/Run.cc.s

CMakeFiles/decay.dir/RunAction.cc.o: CMakeFiles/decay.dir/flags.make
CMakeFiles/decay.dir/RunAction.cc.o: ../RunAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aphan/g4work/spec_sim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/decay.dir/RunAction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/decay.dir/RunAction.cc.o -c /home/aphan/g4work/spec_sim/RunAction.cc

CMakeFiles/decay.dir/RunAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/decay.dir/RunAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/aphan/g4work/spec_sim/RunAction.cc > CMakeFiles/decay.dir/RunAction.cc.i

CMakeFiles/decay.dir/RunAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/decay.dir/RunAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/aphan/g4work/spec_sim/RunAction.cc -o CMakeFiles/decay.dir/RunAction.cc.s

CMakeFiles/decay.dir/SteppingAction.cc.o: CMakeFiles/decay.dir/flags.make
CMakeFiles/decay.dir/SteppingAction.cc.o: ../SteppingAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aphan/g4work/spec_sim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/decay.dir/SteppingAction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/decay.dir/SteppingAction.cc.o -c /home/aphan/g4work/spec_sim/SteppingAction.cc

CMakeFiles/decay.dir/SteppingAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/decay.dir/SteppingAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/aphan/g4work/spec_sim/SteppingAction.cc > CMakeFiles/decay.dir/SteppingAction.cc.i

CMakeFiles/decay.dir/SteppingAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/decay.dir/SteppingAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/aphan/g4work/spec_sim/SteppingAction.cc -o CMakeFiles/decay.dir/SteppingAction.cc.s

CMakeFiles/decay.dir/SteppingVerbose.cc.o: CMakeFiles/decay.dir/flags.make
CMakeFiles/decay.dir/SteppingVerbose.cc.o: ../SteppingVerbose.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aphan/g4work/spec_sim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/decay.dir/SteppingVerbose.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/decay.dir/SteppingVerbose.cc.o -c /home/aphan/g4work/spec_sim/SteppingVerbose.cc

CMakeFiles/decay.dir/SteppingVerbose.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/decay.dir/SteppingVerbose.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/aphan/g4work/spec_sim/SteppingVerbose.cc > CMakeFiles/decay.dir/SteppingVerbose.cc.i

CMakeFiles/decay.dir/SteppingVerbose.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/decay.dir/SteppingVerbose.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/aphan/g4work/spec_sim/SteppingVerbose.cc -o CMakeFiles/decay.dir/SteppingVerbose.cc.s

CMakeFiles/decay.dir/TrackingAction.cc.o: CMakeFiles/decay.dir/flags.make
CMakeFiles/decay.dir/TrackingAction.cc.o: ../TrackingAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aphan/g4work/spec_sim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/decay.dir/TrackingAction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/decay.dir/TrackingAction.cc.o -c /home/aphan/g4work/spec_sim/TrackingAction.cc

CMakeFiles/decay.dir/TrackingAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/decay.dir/TrackingAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/aphan/g4work/spec_sim/TrackingAction.cc > CMakeFiles/decay.dir/TrackingAction.cc.i

CMakeFiles/decay.dir/TrackingAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/decay.dir/TrackingAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/aphan/g4work/spec_sim/TrackingAction.cc -o CMakeFiles/decay.dir/TrackingAction.cc.s

# Object files for target decay
decay_OBJECTS = \
"CMakeFiles/decay.dir/decay.cc.o" \
"CMakeFiles/decay.dir/ActionInitialization.cc.o" \
"CMakeFiles/decay.dir/DetectorConstruction.cc.o" \
"CMakeFiles/decay.dir/EventAction.cc.o" \
"CMakeFiles/decay.dir/HistoManager.cc.o" \
"CMakeFiles/decay.dir/PhysicsList.cc.o" \
"CMakeFiles/decay.dir/PrimaryGeneratorAction.cc.o" \
"CMakeFiles/decay.dir/Run.cc.o" \
"CMakeFiles/decay.dir/RunAction.cc.o" \
"CMakeFiles/decay.dir/SteppingAction.cc.o" \
"CMakeFiles/decay.dir/SteppingVerbose.cc.o" \
"CMakeFiles/decay.dir/TrackingAction.cc.o"

# External object files for target decay
decay_EXTERNAL_OBJECTS =

decay: CMakeFiles/decay.dir/decay.cc.o
decay: CMakeFiles/decay.dir/ActionInitialization.cc.o
decay: CMakeFiles/decay.dir/DetectorConstruction.cc.o
decay: CMakeFiles/decay.dir/EventAction.cc.o
decay: CMakeFiles/decay.dir/HistoManager.cc.o
decay: CMakeFiles/decay.dir/PhysicsList.cc.o
decay: CMakeFiles/decay.dir/PrimaryGeneratorAction.cc.o
decay: CMakeFiles/decay.dir/Run.cc.o
decay: CMakeFiles/decay.dir/RunAction.cc.o
decay: CMakeFiles/decay.dir/SteppingAction.cc.o
decay: CMakeFiles/decay.dir/SteppingVerbose.cc.o
decay: CMakeFiles/decay.dir/TrackingAction.cc.o
decay: CMakeFiles/decay.dir/build.make
decay: /home/aphan/software/geant4/geant4.10.07.p02-install/lib/libG4Tree.so
decay: /home/aphan/software/geant4/geant4.10.07.p02-install/lib/libG4FR.so
decay: /home/aphan/software/geant4/geant4.10.07.p02-install/lib/libG4GMocren.so
decay: /home/aphan/software/geant4/geant4.10.07.p02-install/lib/libG4visHepRep.so
decay: /home/aphan/software/geant4/geant4.10.07.p02-install/lib/libG4RayTracer.so
decay: /home/aphan/software/geant4/geant4.10.07.p02-install/lib/libG4VRML.so
decay: /home/aphan/software/geant4/geant4.10.07.p02-install/lib/libG4OpenGL.so
decay: /home/aphan/software/geant4/geant4.10.07.p02-install/lib/libG4gl2ps.so
decay: /home/aphan/software/geant4/geant4.10.07.p02-install/lib/libG4vis_management.so
decay: /home/aphan/software/geant4/geant4.10.07.p02-install/lib/libG4modeling.so
decay: /home/aphan/software/geant4/geant4.10.07.p02-install/lib/libG4interfaces.so
decay: /home/aphan/software/geant4/geant4.10.07.p02-install/lib/libG4persistency.so
decay: /home/aphan/software/geant4/geant4.10.07.p02-install/lib/libG4error_propagation.so
decay: /home/aphan/software/geant4/geant4.10.07.p02-install/lib/libG4readout.so
decay: /home/aphan/software/geant4/geant4.10.07.p02-install/lib/libG4physicslists.so
decay: /home/aphan/software/geant4/geant4.10.07.p02-install/lib/libG4tasking.so
decay: /home/aphan/software/geant4/geant4.10.07.p02-install/lib/libG4parmodels.so
decay: /usr/lib/x86_64-linux-gnu/libXmu.so
decay: /usr/lib/x86_64-linux-gnu/libXext.so
decay: /usr/lib/x86_64-linux-gnu/libXt.so
decay: /usr/lib/x86_64-linux-gnu/libICE.so
decay: /usr/lib/x86_64-linux-gnu/libSM.so
decay: /usr/lib/x86_64-linux-gnu/libX11.so
decay: /usr/lib/x86_64-linux-gnu/libGL.so
decay: /usr/lib/x86_64-linux-gnu/libQt5OpenGL.so.5.12.8
decay: /usr/lib/x86_64-linux-gnu/libQt5PrintSupport.so.5.12.8
decay: /usr/lib/x86_64-linux-gnu/libQt5Widgets.so.5.12.8
decay: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.12.8
decay: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.12.8
decay: /home/aphan/software/geant4/geant4.10.07.p02-install/lib/libG4run.so
decay: /home/aphan/software/geant4/geant4.10.07.p02-install/lib/libG4event.so
decay: /home/aphan/software/geant4/geant4.10.07.p02-install/lib/libG4tracking.so
decay: /home/aphan/software/geant4/geant4.10.07.p02-install/lib/libG4processes.so
decay: /home/aphan/software/geant4/geant4.10.07.p02-install/lib/libG4analysis.so
decay: /usr/lib/x86_64-linux-gnu/libexpat.so
decay: /home/aphan/software/geant4/geant4.10.07.p02-install/lib/libG4digits_hits.so
decay: /home/aphan/software/geant4/geant4.10.07.p02-install/lib/libG4track.so
decay: /home/aphan/software/geant4/geant4.10.07.p02-install/lib/libG4particles.so
decay: /home/aphan/software/geant4/geant4.10.07.p02-install/lib/libG4geometry.so
decay: /home/aphan/software/geant4/geant4.10.07.p02-install/lib/libG4materials.so
decay: /home/aphan/software/geant4/geant4.10.07.p02-install/lib/libG4zlib.so
decay: /home/aphan/software/geant4/geant4.10.07.p02-install/lib/libG4graphics_reps.so
decay: /home/aphan/software/geant4/geant4.10.07.p02-install/lib/libG4intercoms.so
decay: /home/aphan/software/geant4/geant4.10.07.p02-install/lib/libG4global.so
decay: /home/aphan/software/geant4/geant4.10.07.p02-install/lib/libG4clhep.so
decay: /home/aphan/software/geant4/geant4.10.07.p02-install/lib/libG4ptl.so.0.0.2
decay: CMakeFiles/decay.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/aphan/g4work/spec_sim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking CXX executable decay"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/decay.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/decay.dir/build: decay

.PHONY : CMakeFiles/decay.dir/build

CMakeFiles/decay.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/decay.dir/cmake_clean.cmake
.PHONY : CMakeFiles/decay.dir/clean

CMakeFiles/decay.dir/depend:
	cd /home/aphan/g4work/spec_sim/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/aphan/g4work/spec_sim /home/aphan/g4work/spec_sim /home/aphan/g4work/spec_sim/build /home/aphan/g4work/spec_sim/build /home/aphan/g4work/spec_sim/build/CMakeFiles/decay.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/decay.dir/depend

