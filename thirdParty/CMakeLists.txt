project(thirdParty)
set (dependencies
  GeographicLib
)

foreach(dependency ${dependencies})
   if (EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/${dependency}/include")
       include_directories("${CMAKE_CURRENT_SOURCE_DIR}/${dependency}/include")
   else()
       include_directories("${CMAKE_CURRENT_SOURCE_DIR}/${dependency}")
   endif()
   add_subdirectory("${CMAKE_CURRENT_SOURCE_DIR}/${dependency}")
   #set(${dependency}_DIR "${CMAKE_CURRENT_SOURCE_DIR}/${dependency}")
   #add_subdirectory(${dependency}_DIR)
   #set(${dependency}_INCLUDE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/${dependency}/include")
   #set(${dependency}_SOURCE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/${dependency}/src")
endforeach(dependency ${dependencies})
