# cmake needs this line
cmake_minimum_required(VERSION 3.1)

# Define project name
project(opencv_example_project)

# Find OpenCV, you may need to set OpenCV_DIR variable
# to the absolute path to the directory containing OpenCVConfig.cmake file
# via the command line or GUI
find_package(OpenCV REQUIRED)

# If the package has been found, several variables will
# be set, you can find the full list with descriptions
# in the OpenCVConfig.cmake file.
# Print some message showing some of them
message(STATUS "OpenCV library status:")
message(STATUS "    config: ${OpenCV_DIR}")
message(STATUS "    version: ${OpenCV_VERSION}")
message(STATUS "    libraries: ${OpenCV_LIBS}")
message(STATUS "    include path: ${OpenCV_INCLUDE_DIRS}")

# Declare the executable target built from your sources
add_executable(opencv_example example.cpp)
add_executable(main main.cpp)
add_executable(client client.cpp)
add_executable(server server.cpp)
add_executable(client1 client1.cpp)
add_executable(server1 server1.cpp)
add_executable(client2 client2.cpp)
add_executable(server2 server2.cpp)
add_executable(udp_srv udp_srv.cpp)
add_executable(udp_cli udp_cli.cpp)


# Link your application with OpenCV libraries
target_link_libraries(opencv_example PRIVATE ${OpenCV_LIBS})
target_link_libraries(main PRIVATE ${OpenCV_LIBS})
target_link_libraries(client PRIVATE ${OpenCV_LIBS})
target_link_libraries(server PRIVATE ${OpenCV_LIBS})
target_link_libraries(client1 PRIVATE ${OpenCV_LIBS})
target_link_libraries(server1 PRIVATE ${OpenCV_LIBS})
target_link_libraries(client2 PRIVATE ${OpenCV_LIBS})
target_link_libraries(server2 PRIVATE ${OpenCV_LIBS})
target_link_libraries(udp_srv PRIVATE ${OpenCV_LIBS})
target_link_libraries(udp_cli PRIVATE ${OpenCV_LIBS})

