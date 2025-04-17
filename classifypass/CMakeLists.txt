cmake_minimum_required(VERSION 3.10)
project(CallClassifierPass)

add_library(LegacyCallClassifierPass MODULE CallClassifierPass.cpp)

# Find the LLVM package.
find_package(LLVM 16 REQUIRED CONFIG)

# LLVM setup.
list(APPEND CMAKE_MODULE_PATH "${LLVM_CMAKE_DIR}")
include(AddLLVM)

# Include LLVM directories.
include_directories(${LLVM_INCLUDE_DIRS})
add_definitions(${LLVM_DEFINITIONS})

# Build the pass as a plugin.
add_llvm_pass_plugin(CallClassifierPass
   CallClassifierPass.cpp
   DEPENDS
    intrinsics_gen
)






