project(bubbleRob)

set (plugins
    simExtBubbleRob
)

#foreach (plugin ${plugins})
#  add_library(${plugin} SHARED ${plugin}.cpp ${VREP_SRC})
#endforeach (plugin ${plugins})

#add_executable(bubbleRobB0Client b0RemoteApiClient.cpp b0RemoteApi.cpp)
add_executable(bubbleRobB0Client b0RemoteApiClient.cpp ${B0REMOTEAPI_SRC})
#target_link_libraries(bubbleRobB0Client ${Boost_LIBRARIES} ${B0_LIBRARY_SHARED} b0RemoteApi)
target_link_libraries(bubbleRobB0Client ${Boost_LIBRARIES} ${B0_LIBRARY_SHARED} )

