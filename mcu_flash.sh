#!/usr/bin/env bash
#VERY experimental and only for one board, at the moment. DO NOT USE or USE AT YOUR OWN DISCRETION

cd ~/klipper
rm .config
cp config.board .config
sudo service klipper stop
make clean
make
./scripts/flash-sdcard.sh /dev/ttyAMA0 btt-octopus-f429-v1.1
make clean
rm .config
cp config.pi .config
make flash
