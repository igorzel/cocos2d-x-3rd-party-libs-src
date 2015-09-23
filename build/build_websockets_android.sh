#!/bin/bash

rm -rf /tmp/temp-standalone-android-toolchain

${ANDROID_NDK}/build/tools/make-standalone-toolchain.sh --platform=android-9 --install-dir=/tmp/temp-standalone-android-toolchain --toolchain=arm-linux-androideabi-4.9

export PATH=/tmp/temp-standalone-android-toolchain/bin:$PATH
export CC="arm-linux-androideabi-gcc"
export CXX="arm-linux-androideabi-g++"


./build.sh -p=android --libs=websockets --arch=arm,armv7 --mode=release


rm -rf /tmp/temp-standalone-android-toolchain
