cmake_minimum_required(VERSION 3.10)

project(jobcafe)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_FLAGS "#{CMAKE_CXX_FLAGS} -Wall")
set(SOURCES
  src/main.cpp
  # src/appstate.cpp
  qml.qrc
  )
set(HEADERS
  # src/appstate.h
  )

find_package(Qt5 COMPONENTS Core Network Quick Sql REQUIRED)

add_executable(${PROJECT_NAME} ${SOURCES} ${HEADERS})
# target_compile_definitions(${PROJECT_NAME} PRIVATE $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>)
target_link_libraries(${PROJECT_NAME} PRIVATE Qt5::Core Qt5::Network Qt5::Quick Qt5::Sql)
