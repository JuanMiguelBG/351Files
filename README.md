# 351Files
A single panel file Manager tailored for Anbernic 351 devices: RG351V and RG351P. Can be easily adapted to any Linux-based device.

Based on DinguxCommander.
* Original page: https://tardigrade-nx.github.io/2011/dinguxcommander

<p align="center">
  <img src="https://raw.githubusercontent.com/Tardigrade-nx/351Files/master/screenshots/01.png" alt="Screenshot 1"><br /><br />
  <img src="https://raw.githubusercontent.com/Tardigrade-nx/351Files/master/screenshots/02.png" alt="Screenshot 2"><br /><br />
  <img src="https://raw.githubusercontent.com/Tardigrade-nx/351Files/master/screenshots/03.png" alt="Screenshot 3"><br /><br />
  <img src="https://raw.githubusercontent.com/Tardigrade-nx/351Files/master/screenshots/04.png" alt="Screenshot 4"><br /><br />
</p>

# Features:
* Single panel file manager
* Copy, move, rename, delete, create directories and files.
* Display file size, compute directory size
* Text file viewer
* Text file editor
* Image viewer (original size or fit screen, next / previous image)

# Installation on 351ELEC:
351Files is now integrated in 351ELEC by default.

# Installation on ArkOS:
351Files is now integrated in ArkOS by default.

# Buttons:
* d-pad: move
* A: open / validate
* B: cancel / back
* X: open context menu
* Y: select / unselect item
* R1/R2: page down
* L1/L2: page up

Image viewer:
* d-pad: next / previous image, or scroll image
* A: switch original size / fit screen

Text editor:
* d-pad: move
* A: open virtual keyboard / validate
* B: cancel / back
* X: open context menu
* Y + d-pad: select text
* R1/R2: page down
* L1/L2: page up

# Building
package requirements: SDL2 SDL2_image SDL2_ttf SDL2-dev SDL2_image-dev SDL2_ttf-dev

git clone https://github.com/JuanMiguelBG/351Files.git
cd 351Files

## For 351V and 351ELEC
./build_RG351.sh RG351V 351ELEC /storage/roms ./res

## For 351P and 351ELEC
./build_RG351.sh RG351P 351ELEC /storage/roms ./res

## For 351V and ArkOS
./build_RG351.sh RG351V ArkOS /roms ./res

## For 351P and ArkOS
./build_RG351.sh RG351P ArkOS /roms ./res

## For 351MP and ArkOS
./build_RG351.sh RG351MP ArkOS /roms ./res

## For RGB10/OGA 1.1 (BE) and ArkOS
./build_RG351.sh RGB10 ArkOS /roms ./res

## For RK2020/OGA 1.0 and ArkOS
./build_RG351.sh RK2020 ArkOS /roms ./res

## For CHI and ArkOS
./build_RG351.sh CHI ArkOS /roms ./res

## For OGA 1.1 and RetroOZ
./build_RG351.sh OGA1 RetroOZ /roms ./res

## For OGS and RetroOZ
./build_RG351.sh OGS RetroOZ /roms ./res

## For RGB10MAX and RetroOZ
./build_RG351.sh RGB10MAX RetroOZ /roms ./res

## For RG503 and ArkOS
./build_RG351.sh RG503 ArkOS /roms ./res

## For RG353V/VS/M/P and ArkOS
./build_RG351.sh RG353 ArkOS /roms ./res

Copy the res folder to your preferred folder location along with the 351Files executable. \
You can also just grab the generated .tgz file and do as instructed in the installation section above in this readme.

# Compilation:
Define the following variables when executing 'make':
* CC
* SDL2_CONFIG
* DEVICE: CHI / RG351 Family / RGB10 / RK2020 / OGA Family / OGS / RGB10MAX / RG503 / RG353 Family / PC
* START_PATH
* RES_PATH
