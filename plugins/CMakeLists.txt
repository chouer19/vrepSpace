project(plugins)
set (plugins
  simExtVision
  simExtBubbleRob
)

foreach (plugin ${plugins})
  file(GLOB_RECURSE ALL_SRCS ${plugin}/*.cpp ${COPPELIASIM_COMMON_DIR}/*.cpp ${COPPELIASIM_LIB_DIR}/simMath/*.cpp)
  add_library(${plugin} SHARED ${ALL_SRCS})
endforeach (plugin ${plugins})

