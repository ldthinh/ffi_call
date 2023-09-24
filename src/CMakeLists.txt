cmake_minimum_required(VERSION 3.10)

project(ffi_call_library VERSION 0.0.1 LANGUAGES CXX)

add_library(ffi_call SHARED add.cpp)

set_target_properties(ffi_call PROPERTIES
  PUBLIC_HEADER add.h
  OUTPUT_NAME "ffi_call"
)

target_compile_definitions(ffi_call PUBLIC DART_SHARED_LIB)
