# Modules's 'base' cmake build system

set(CMAKE_C_STANDARD 23)
set(CMAKE_C_STANDARD_REQUIRED true)

set(src ${CMAKE_CURRENT_SOURCE_DIR}/src)
set(include ${CMAKE_CURRENT_SOURCE_DIR}/include)

add_library(${base-target} SHARED 
    ${src}/foo.c
    ${include}/foo.h
)

target_include_directories(${base-target} PRIVATE ${include})
