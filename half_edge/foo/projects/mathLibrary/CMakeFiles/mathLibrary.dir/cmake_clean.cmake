file(REMOVE_RECURSE
  "mathLibrary.pdb"
  "mathLibrary"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/mathLibrary.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
