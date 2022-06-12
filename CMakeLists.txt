set(CMAKE_TOOLCHAIN_FILE "gcc.cmake")
project(test)
include(FetchContent)
cmake_minimum_required(VERSION 3.02.8)
# enable_language(ASM)

set(main_inc "${CMAKE_CURRENT_SOURCE_DIR}/app/inc")

set(main_sources
    "${CMAKE_CURRENT_SOURCE_DIR}/app/src/main.c"
)

include_directories(
    ${main_inc}
)

add_executable(${CMAKE_PROJECT_NAME} ${main_sources})

string(TOLOWER "calc" cName)
string(TOLOWER "lcalc" lcName)

FetchContent_Declare(
        ${cName}
        GIT_REPOSITORY https://github.com/kenshin1988/calculations.git
        GIT_TAG main
        SUBBUILD_DIR ${CMAKE_CURRENT_BINARY_DIR}/${cName}_subbuild
        SOURCE_DIR ${CMAKE_SOURCE_DIR}/${cName}
        BINARY_DIR ${CMAKE_CURRENT_BINARY_DIR}/${cName}_build
)

FetchContent_Declare(
        ${lcName}
        GIT_REPOSITORY https://github.com/kenshin1988/lcalc.git
        GIT_TAG main
        SUBBUILD_DIR ${CMAKE_CURRENT_BINARY_DIR}/${lcName}_subbuild
        SOURCE_DIR ${CMAKE_SOURCE_DIR}/${lcName}
        BINARY_DIR ${CMAKE_CURRENT_BINARY_DIR}/${lcName}_build
)

FetchContent_MakeAvailable(${cName})

if(NOT ${cName}_POPULATED)
  FetchContent_Populate(${lcName})
  target_link_libraries(${CMAKE_PROJECT_NAME} ${CMAKE_SOURCE_DIR}/${lcName}/libcalc.a)
else()
    target_link_libraries(${CMAKE_PROJECT_NAME} ${cName})
endif()
