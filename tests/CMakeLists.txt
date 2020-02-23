project(tests)

add_executable(test-LocalCartesian example-LocalCartesian.cpp)
target_link_libraries(
    test-LocalCartesian
    ${GeographicLib_LIBRARIES}
)
#link_libraries(${GeographicLib_LIBRARIES})

