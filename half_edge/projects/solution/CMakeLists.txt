#--------------------------------------------------------------------------
# example project
#--------------------------------------------------------------------------

PROJECT(solution)
FILE(GLOB solution_headers code/*.h)
FILE(GLOB solution_sources code/*.cc)

SET(files_solution ${solution_headers} ${solution_sources} code/halfEdgeMeshes.h code/halfEdgeMeshes.cpp code/exampleapp.h code/halfEdgeMeshes.cpp)
SOURCE_GROUP("solution" FILES ${files_solution})

ADD_EXECUTABLE(solution ${files_solution})
TARGET_LINK_LIBRARIES(solution core render)
ADD_DEPENDENCIES(solution core render)