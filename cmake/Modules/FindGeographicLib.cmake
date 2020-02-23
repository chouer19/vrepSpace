# Look for GeographicLib
#
# Set
#  GeographicLib_FOUND = GEOGRAPHICLIB_FOUND = TRUE
#  GeographicLib_INCLUDE_DIRS = /usr/local/include
#  GeographicLib_LIBRARIES = /usr/local/lib/libGeographic.so
#  GeographicLib_LIBRARY_DIRS = /usr/local/lib

###  find_library (GeographicLib_LIBRARIES Geographic
###    PATHS "${CMAKE_INSTALL_PREFIX}/../GeographicLib/lib")
###  
find_library (GeographicLib_LIBRARIES Geographic
  PATHS "${CMAKE_LIBRARY_OUTPUT_DIRECTORY}")


if (GeographicLib_LIBRARIES)
   get_filename_component (GeographicLib_LIBRARY_DIRS
     "${GeographicLib_LIBRARIES}" PATH)
   if (EXISTS "${PROJECT_SOURCE_DIR}/thirdParty/GeographicLib/include")
       set (GeographicLib_INCLUDE_DIRS "${PROJECT_SOURCE_DIR}/thirdParty/GeographicLib/include")
       set(GeographicLib_FOUND TRUE)
   else()
       set(GeographicLib_FOUND FALSE)
   endif()
endif ()

include (FindPackageHandleStandardArgs)
find_package_handle_standard_args (GeographicLib DEFAULT_MSG
  GeographicLib_LIBRARY_DIRS 
  GeographicLib_LIBRARIES
  GeographicLib_INCLUDE_DIRS)
mark_as_advanced (
  GeographicLib_LIBRARY_DIRS 
  GeographicLib_LIBRARIES
  GeographicLib_INCLUDE_DIRS)
