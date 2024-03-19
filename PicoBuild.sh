rm -r build
mkdir build
cd build
export PICO_SDK_PATH=../../pico-sdk
cmake ..
make
cd ../
SLASHCOUNT=$(pwd | awk -F'/' '{print NF}')
PROJECTNAME=$(pwd | cut -d\/ -f$SLASHCOUNT)
mv build/$PROJECTNAME.uf2 /media/____/RPI-RP2/
