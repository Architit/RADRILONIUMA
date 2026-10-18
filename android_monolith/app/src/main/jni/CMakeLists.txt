cmake_minimum_required(VERSION 3.22.1)
project("radriloniuma_native")

# Build JNI bridge library: libradriloniuma_jni.so
add_library(radriloniuma_jni SHARED
    radriloniuma_boot.c
)

target_include_directories(radriloniuma_jni PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}
)

find_library(log-lib log)

target_link_libraries(radriloniuma_jni
    ${log-lib}
)

# Build PID 1 supervisor binary: ark_initd
add_executable(ark_initd
    ark_initd.c
)

target_link_libraries(ark_initd
    ${log-lib}
)
