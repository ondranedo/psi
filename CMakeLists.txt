# ROOT Cmake build system
cmake_minimum_required(VERSION 3.5)
project(PSIFW)

#
if(LINUX)
    set(platform "linux")
endif()

if(WIN32)
    set(build "windows")
endif()

if(UNIX AND NOT APPLE)
    set(build "apple")
endif()

#
set(build ${CMAKE_SOURCE_DIR}/build/${platform}/${CMAKE_BUILD_TYPE})
set(install ${CMAKE_SOURCE_DIR}/install)

#
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${build})
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${build})
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${build}/lib)

# Different modules
set(base-target base)
add_subdirectory(base)

set(testbed-target testbed)
add_subdirectory(testbed)










