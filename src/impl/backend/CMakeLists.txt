cmake_minimum_required(VERSION 3.14)
cmake_policy(SET CMP0091 NEW)
project(cimgui_impl)

set (CMAKE_CXX_STANDARD 11)

set (BACKENDS_FOLDER "../../../cimgui/cimgui/imgui/backends")

find_package(glfw3 REQUIRED)
find_package(GLEW REQUIRED)

include_directories(../../../cimgui/cimgui/imgui)
add_definitions("-DIMGUI_DISABLE_OBSOLETE_FUNCTIONS=1")

add_definitions("-DIMGUI_IMPL_API=extern \"C\" ")

if(IMGUI_STATIC)
    add_library(cimgui STATIC IMPORTED)
    if(${CMAKE_SYSTEM_NAME} STREQUAL "Darwin")
	set_target_properties(cimgui PROPERTIES
	    IMPORTED_LOCATION ${CMAKE_SOURCE_DIR}/../../../cimgui/libcimgui.a
	    INTERFACE_INCLUDE_DIRECTORIES ${CMAKE_SOURCE_DIR}/../../../cimgui/cimgui)
    else()
	set_target_properties(cimgui PROPERTIES
	    IMPORTED_LOCATION ${CMAKE_SOURCE_DIR}/../../../cimgui/libcimgui.a
	    INTERFACE_INCLUDE_DIRECTORIES ${CMAKE_SOURCE_DIR}/../../../cimgui/cimgui)
    endif()
    add_library(${PROJECT_NAME} STATIC imgui_impl_opengl3.cpp imgui_impl_glfw.cpp)
else()
    add_library(cimgui SHARED IMPORTED)
    set_target_properties(cimgui PROPERTIES
	IMPORTED_LOCATION ${CMAKE_SOURCE_DIR}/../../../cimgui/dllcimgui.so
	INTERFACE_INCLUDE_DIRECTORIES ${CMAKE_SOURCE_DIR}/../../../cimgui/cimgui/)
    add_library(${PROJECT_NAME} SHARED imgui_impl_opengl3.cpp imgui_impl_glfw.cpp)
endif()

target_compile_definitions(${PROJECT_NAME} PUBLIC 
    -DCIMGUI_USE_OPENGL3
    -DCIMGUI_USE_GLFW)
if(${CMAKE_SYSTEM_NAME} STREQUAL "Darwin")
    find_package(OpenGL REQUIRED)
    target_link_libraries(${PROJECT_NAME} cimgui glfw GLEW::GLEW OpenGL::GL)
else()
    target_link_libraries(${PROJECT_NAME} cimgui glfw GLEW::GLEW)
endif()
