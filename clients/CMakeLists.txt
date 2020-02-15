project(clients)
set (clients
  bubbleRobB0Client
)

foreach (client ${clients})
  file(GLOB_RECURSE CLIENT_SRCS ${client}/*.cpp)
  add_executable(${client} ${CLIENT_SRCS} ${B0REMOTEAPI_SRCS})
  target_link_libraries(${client} ${Boost_LIBRARIES} b0 )
  install(TARGETS ${client} DESTINATION ${CMAKE_INSTALL_PREFIX})
endforeach (client ${clients})

