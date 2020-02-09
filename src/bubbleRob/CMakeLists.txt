project(bubbleRob)

set (plugins
    simExtBubbleRob
)

#foreach (plugin ${plugins})
#  add_library(${plugin} SHARED ${plugin}.cpp ${VREP_SRC})
#endforeach (plugin ${plugins})

#add_executable(bubbleRobB0Client b0RemoteApiClient.cpp b0RemoteApi.cpp)
message("b0RemoteApi srcs is : ${B0REMOTEAPI_SRCS}")
message("b0 lib is : ${B0_LIBRARY_SHARED}")
add_executable(bubbleRobB0Client b0RemoteApiClient.cpp ${B0REMOTEAPI_SRCS})
target_link_libraries(bubbleRobB0Client ${Boost_LIBRARIES} b0 )

