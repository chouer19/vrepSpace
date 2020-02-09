function(COPPELIASIM_FIND_ERROR MESSAGE)
    if(CoppeliaSim_FIND_REQUIRED)
        message(FATAL_ERROR ${MESSAGE})
    elseif(NOT CoppeliaSim_FIND_QUIETLY)
        message(SEND_ERROR ${MESSAGE})
    endif()
endfunction()

if(NOT COPPELIASIM_ROOT_DIR)
    set(COPPELIASIM_LIB_DIR ${PROJECT_SOURCE_DIR}/coppeliasimLib)
endif()

foreach(D IN ITEMS
        "${COPPELIASIM_LIB_DIR}/b0RemoteApiBindings"
)
    if(NOT EXISTS "${D}" AND IS_DIRECTORY "${D}")
        coppeliasim_find_error("Directory ${D} does not exist.")
        return()
    endif()
endforeach()
set(B0REMOTEAPI_DIR "${COPPELIASIM_LIB_DIR}/b0RemoteApiBindings")
set(MSGPACK_DIR "${COPPELIASIM_LIB_DIR}/b0RemoteApiBindings/msgpack-c")

set(MSGPACK_INCLUDE_DIR "${MSGPACK_DIR}/include")
set(MSGPACK_SRC_DIR "${MSGPACK_DIR}/src")

include_directories(${B0REMOTEAPI_DIR})
include_directories(${MSGPACK_INCLUDE_DIR})

add_subdirectory(${MSGPACK_DIR})

set(B0REMOTEAPI_SRCS
    "${B0REMOTEAPI_DIR}/b0RemoteApi.cpp"
)
