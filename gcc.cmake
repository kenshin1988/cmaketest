
set(CMAKE_C_COMPILER "C:/MinGW/bin/gcc.exe")

set(CMAKE_CXX_COMPILER "C:/MinGW/bin/g++.exe")

set(CMAKE_ASM_COMPILER "C:/MinGW/bin/gcc.exe")


# ADD_CUSTOM_TARGET(${CMAKE_PROJECT_NAME}.hex DEPENDS ${CMAKE_PROJECT_NAME} COMMAND ${CMAKE_OBJCOPY} -Oihex ${CMAKE_PROJECT_NAME} ${CMAKE_PROJECT_NAME}.hex)
# ADD_CUSTOM_TARGET(${CMAKE_PROJECT_NAME}.bin DEPENDS ${CMAKE_PROJECT_NAME} COMMAND ${CMAKE_OBJCOPY} -Obinary ${CMAKE_PROJECT_NAME} ${CMAKE_PROJECT_NAME}.bin)
# ADD_CUSTOM_TARGET(${CMAKE_PROJECT_NAME}.dump DEPENDS ${CMAKE_PROJECT_NAME} COMMAND ${CMAKE_OBJDUMP} -x -D -S -s ${CMAKE_PROJECT_NAME} | ${CMAKE_CPPFILT} > ${CMAKE_PROJECT_NAME}.dump)



# SET(DEVICE_SPECIFIC_CFLAGS "-DUSE_FULL_LL_DRIVER -DHSE_VALUE=25000000 -DHSE_STARTUP_TIMEOUT=100 -DLSE_STARTUP_TIMEOUT=5000 -DLSE_VALUE=32768 -DEXTERNAL_CLOCK_VALUE=12288000 -DHSI_VALUE=16000000 -DLSI_VALUE=32000")

# SET(CMAKE_C_FLAGS "-D USE_STM324xG_EVAL -DSTM32F40_41xxx -DUSE_STDPERIPH_DRIVER -ggdb -lc -lm -lnosys -specs=nano.specs -specs=nosys.specs -mthumb -fno-builtin -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -Wall -std=gnu99 -ffunction-sections -fdata-sections -fomit-frame-pointer -mabi=aapcs -fno-unroll-loops -ffast-math -ftree-vectorize" CACHE INTERNAL "c compiler flags")
# SET(CMAKE_CXX_FLAGS "-DSTM32F40_41xxx -DUSE_STDPERIPH_DRIVER -ggdb -lc -lm -lnosys -specs=nano.specs -specs=nosys.specs -mthumb -fno-builtin -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -Wall -std=c++11 -ffunction-sections -fdata-sections -fomit-frame-pointer -mabi=aapcs -fno-unroll-loops -ffast-math -ftree-vectorize" CACHE INTERNAL "cxx compiler flags")
# SET(CMAKE_ASM_FLAGS "-DSTM32F40_41xxx -DUSE_STDPERIPH_DRIVER -ggdb -lc -lm -lnosys -specs=nano.specs -specs=nosys.specs -mthumb -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -x assembler-with-cpp" CACHE INTERNAL "asm compiler flags")
