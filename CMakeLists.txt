cmake_minimum_required(VERSION 3.4)
project(sendip_project_build)

add_compile_options(-fPIC)

if(CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)
  set(CMAKE_INSTALL_PREFIX
      "${PROJECT_BINARY_DIR}/install"
      CACHE PATH "default install prefix" FORCE)
endif()

message("CMAKE_INSTALL_PREFIX:${CMAKE_INSTALL_PREFIX}")
add_compile_definitions(SENDIP_LIBS="lib/sendip")
set(SRC_DIR ./)

add_library(COMMON_LIB ${SRC_DIR}/csum.c ${SRC_DIR}/compact.c)

add_executable(sendip ${SRC_DIR}/sendip.c ${SRC_DIR}/gnugetopt.c
                      ${SRC_DIR}/gnugetopt1.c ${SRC_DIR}/compact.c)
target_link_libraries(sendip dl)

add_library(ipv4 SHARED ${SRC_DIR}/ipv4.c)
add_library(ipv6 SHARED ${SRC_DIR}/ipv6.c)
add_library(icmp SHARED ${SRC_DIR}/icmp.c)
add_library(tcp SHARED ${SRC_DIR}/tcp.c)
add_library(udp SHARED ${SRC_DIR}/udp.c)
add_library(rip SHARED ${SRC_DIR}/rip.c)
add_library(ripng SHARED ${SRC_DIR}/ripng.c)
add_library(ntp SHARED ${SRC_DIR}/ntp.c)
add_library(bgp SHARED ${SRC_DIR}/bgp.c)

target_link_libraries(ipv4 COMMON_LIB)
target_link_libraries(ipv6 COMMON_LIB)
target_link_libraries(icmp COMMON_LIB)
target_link_libraries(tcp COMMON_LIB)
target_link_libraries(udp COMMON_LIB)
target_link_libraries(rip COMMON_LIB)
target_link_libraries(ripng COMMON_LIB)
target_link_libraries(ntp COMMON_LIB)
target_link_libraries(bgp COMMON_LIB)

set(CMAKE_SHARED_LIBRARY_PREFIX "")
# Offer the user the choice of overriding the installation directories
set (INSTALL_BIN_DIR bin CACHE PATH "Installation directory for executables")
set (INSTALL_INCLUDE_DIR include CACHE PATH "Installation directory for header files")
set(CMAKE_INSTALL_LIBDIR "lib/sendip")
install(
  TARGETS sendip
          ipv4
          ipv6
          icmp
          tcp
          udp
          rip
          ripng
          ntp
          bgp
  ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
  LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
  RUNTIME DESTINATION ${INSTALL_BIN_DIR})
