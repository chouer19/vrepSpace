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
        "${COPPELIASIM_LIB_DIR}/bluezero"
)
    if(NOT EXISTS "${D}" AND IS_DIRECTORY "${D}")
        coppeliasim_find_error("Directory ${D} does not exist.")
        return()
    endif()
endforeach()
set(BLUEZERO_DIR ${COPPELIASIM_LIB_DIR}/bluezero)

set(BLUEZERO_INCLUDE_DIR "${BLUEZERO_DIR}/include")
set(BLUEZERO_SRC_DIR "${BLUEZERO_DIR}/src")
set(B0_BINDING_INCLUDE_DIR "${BLUEZERO_DIR}/include/b0/bindings")

include_directories(${BLUEZERO_INCLUDE_DIR})
include_directories(${B0_BINDING_INCLUDE_DIR})

add_subdirectory(${BLUEZERO_DIR})
