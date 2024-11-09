add_executable(${testbed-target} app.c)

target_link_libraries(${testbed-target} PUBLIC ${base-target})
target_include_directories(${testbed-target} PUBLIC "${CMAKE_SOURCE_DIR}/base/include")
