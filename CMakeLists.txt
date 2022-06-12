# Toolchain File. Update the toolchain details here, compiler switches and custom targets can be added as well. See commented sections in gcc.cmake
set(CMAKE_TOOLCHAIN_FILE "gcc.cmake")
# Project name
project(test)
# Enables the fetching module
include(FetchContent)
# Minimum CMake version required
cmake_minimum_required(VERSION 3.02.8)

# Enables assembly support. Should be enabled when adding .s files to the sources.
# enable_language(ASM)

# Include files of main project
set(main_inc "${CMAKE_CURRENT_SOURCE_DIR}/app/inc")

# Source files
set(main_sources
    "${CMAKE_CURRENT_SOURCE_DIR}/app/src/main.c"
)

# Add specified include directories
include_directories(
    ${main_inc}
)

# Specify the target build
add_executable(${CMAKE_PROJECT_NAME} ${main_sources})

# The repository with source
string(TOLOWER "calc" cName)
# The repository with lib
string(TOLOWER "lcalc" lcName)

# Declare the source repository details
FetchContent_Declare(
        ${cName}
        GIT_REPOSITORY https://github.com/kenshin1988/calculations.git
        GIT_TAG main
        SUBBUILD_DIR ${CMAKE_CURRENT_BINARY_DIR}/${cName}_subbuild
        SOURCE_DIR ${CMAKE_SOURCE_DIR}/${cName}
        BINARY_DIR ${CMAKE_CURRENT_BINARY_DIR}/${cName}_build
)

# Declare the lib repository details
FetchContent_Declare(
        ${lcName}
        GIT_REPOSITORY https://github.com/kenshin1988/lcalc.git
        GIT_TAG main
        SUBBUILD_DIR ${CMAKE_CURRENT_BINARY_DIR}/${lcName}_subbuild
        SOURCE_DIR ${CMAKE_SOURCE_DIR}/${lcName}
        BINARY_DIR ${CMAKE_CURRENT_BINARY_DIR}/${lcName}_build
)

# Try downloading source repository
FetchContent_MakeAvailable(${cName})

# If no access, download the lib repository
if(NOT ${cName}_POPULATED)
  FetchContent_Populate(${lcName})
  target_link_libraries(${CMAKE_PROJECT_NAME} ${CMAKE_SOURCE_DIR}/${lcName}/libcalc.a)
else()
# Link the sources if source repository access is available
    target_link_libraries(${CMAKE_PROJECT_NAME} ${cName})
endif()
