#!/bin/bash

if [ -z "$1" ]; then
	echo "Usage: $0 <wallpaper_path>"
	exit 1
fi

image_path="$1"

cp "$image_path" /home/cuicuidev/.local/wallpaper.png

sudo wal -c
sudo wal -l -i "$image_path"

header_path="/root/.cache/wal/colors-wal-dwm.h"
lines_to_comment=(9 10 11 17)

for n in ${lines_to_comment[@]}; do
	sudo sed -i "${n}s/^/\/\//" "$header_path"
done

cd /home/cuicuidev/.local/src/dwm/
sudo make clean install
cd /home/cuicuidev/.local/src/st/
sudo make clean install
cd /home/cuicuidev/.local/src/dmenu/
sudo make clean install
cd /home/cuicuidev/
