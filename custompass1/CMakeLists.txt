#cmake_minimum_required(VERSION 3.10)
#project(ConditionalClassifierPass)

# Find the LLVM package.
#find_package(LLVM 14 REQUIRED CONFIG)

# LLVM setup.
#list(APPEND CMAKE_MODULE_PATH "${LLVM_CMAKE_DIR}")
#include(AddLLVM)

# Include LLVM directories.
#include_directories(${LLVM_INCLUDE_DIRS})
#add_definitions(${LLVM_DEFINITIONS})

# Build the pass as a plugin.
#add_llvm_pass_plugin(ConditionalClassifierPass
  #  ConditionalClassifierPass.cpp
#)


cmake_minimum_required(VERSION 3.10)
project(ConditionalClassifierPass)

# Locate the LLVM package (adjusted for LLVM 16)
find_package(LLVM 16 REQUIRED CONFIG)

# Set up paths for LLVM
list(APPEND CMAKE_MODULE_PATH "${LLVM_CMAKE_DIR}")
include(AddLLVM)

# Include LLVM directories and definitions
include_directories(${LLVM_INCLUDE_DIRS})
add_definitions(${LLVM_DEFINITIONS})

# Build the pass as a plugin
add_llvm_pass_plugin(ConditionalClassifierPass
    ConditionalClassifierPass.cpp
)

# Specify LLVM link libraries (required in LLVM 16)
llvm_map_components_to_libnames(llvm_libs core support passes)
target_link_libraries(ConditionalClassifierPass PRIVATE ${llvm_libs})
