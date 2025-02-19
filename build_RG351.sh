#!/bin/bash

#TOOLCHAIN_DIR="$HOME"/Dev/351ELEC/build.351ELEC-RG351V.aarch64/toolchain
VERSION="1.0"

set -eE

# $1: DEVICE
# $2: FIRMWARE
# $3: START_PATH
# $4: RES_PATH
build351Files() {
   DEVICE="$1"
   FIRMWARE="$2"
   START_PATH="$3"
   RES_PATH="$4"
   make clean
   make CC=g++ DEVICE="$DEVICE" SDL2_CONFIG=sdl2-config START_PATH="$START_PATH" RES_PATH="$RES_PATH"
   strip 351Files
   mkdir -p build/351Files
   cp -r 351Files README.md res build/351Files
   cp launchers/"$FIRMWARE"/351Files.sh build
   cd build
   tar zcf 351Files-"$VERSION"_"$DEVICE"_"$FIRMWARE".tgz 351Files.sh 351Files
   rm -rf 351Files.sh 351Files
   cd ..
}

# Clean up previous builds
rm -rf build

# Build for 351V, 351ELEC
#build351Files RG351V 351ELEC /storage/roms ./res

# Build for 351P, 351ELEC
#build351Files RG351P 351ELEC /storage/roms ./res

# Build for 351V, ArkOS
#build351Files RG351V ArkOS /roms ./res

# Build for 351P, ArkOS
#build351Files RG351P ArkOS /roms ./res

# Build for 351MP, ArkOS
#build351Files RG351MP ArkOS /roms ./res

# Build for RGB10, ArkOS
#build351Files RGB10 ArkOS /roms ./res

# Build for RK2020, ArkOS
#build351Files RK2020 ArkOS /roms ./res

# Build for CHI, ArkOS
#build351Files CHI ArkOS /roms ./res

# Build for OGA 1.1 and RetroOZ
#build351Files OGA1 RetroOZ /roms ./res

# Build for OGS and RetroOZ
#build351FilesOGS RetroOZ /roms ./res

# Build for RGB10MAX and RetroOZ
#build351Files RGB10MAX RetroOZ /roms ./res

# Build for RG503 and ArkOS
#build351Files RG503 ArkOS /roms ./res

# Build for RG353V/VS/M/P and ArkOS
#build351Files RG353 ArkOS /roms ./res

build351Files "$1" "$2" "$3" "$4"
