find_path(PHOBOS_INCLUDE_DIR std/file.d)

if("${CMAKE_D_COMPILER_ID}" STREQUAL "DigitalMars")
	find_library(PHOBOS_LIBRARY phobos2)
elseif("${CMAKE_D_COMPILER_ID}" STREQUAL "LDC")
	find_library(PHOBOS_LIBRARY phobos2-ldc)
elseif("${CMAKE_D_COMPILER_ID}" STREQUAL "GDC")
	find_library(PHOBOS_LIBRARY gphobos)
else()
	message(FATAL_ERROR "Unsupported D compiler: ${CMAKE_D_COMPILER_ID}")
endif()


include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(Phobos DEFAULT_MSG PHOBOS_LIBRARY PHOBOS_INCLUDE_DIR)
