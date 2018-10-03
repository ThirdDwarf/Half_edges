#--------------------------------------------------------------------------
# mathLibrary project
#--------------------------------------------------------------------------

PROJECT(mathLibrary)
FILE(GLOB mathLibrary_headers code/*.h)

SET(files_mathLibrary ${mathLibrary_headers})
SOURCE_GROUP("mathLibrary" FILES ${files_mathLibrary})

ADD_EXECUTABLE(mathLibrary ${files_mathLibrary})
TARGET_LINK_LIBRARIES(mathLibrary core render)
ADD_DEPENDENCIES(mathLibrary core render)
