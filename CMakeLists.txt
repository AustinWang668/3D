cmake_minimum_required(VERSION 3.16)
project(VoxelPortrait LANGUAGES CXX)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Find dependencies (install via package manager: glfw3, glm, glad)
find_package(glfw3 REQUIRED)
find_package(glm REQUIRED)
find_package(glad REQUIRED)

add_executable(VoxelPortrait
  src/main.cpp
)

target_include_directories(VoxelPortrait PRIVATE ${CMAKE_SOURCE_DIR}/src)
target_link_libraries(VoxelPortrait PRIVATE glfw glm glad)

if(APPLE)
  target_link_libraries(VoxelPortrait PRIVATE "-framework OpenGL")
else()
  find_package(OpenGL REQUIRED)
  target_link_libraries(VoxelPortrait PRIVATE OpenGL::GL)
endif()

# Copy shaders & assets to build dir for easy running
file(COPY ${CMAKE_SOURCE_DIR}/shaders DESTINATION ${CMAKE_BINARY_DIR})
file(COPY ${CMAKE_SOURCE_DIR}/assets  DESTINATION ${CMAKE_BINARY_DIR})
