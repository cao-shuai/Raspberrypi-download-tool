#!/bin/bash

#HOME dir had raspberrypi
echo $HOME
if [[ ! -d $HOME/Raspberrypi ]]; then
	#statements
	cd $HOME
	mkdir -m 755 Raspberrypi
fi

#change the workplace to raspberrypi
cd $HOME/Raspberrypi

#raspberrypi git project
arry_download=("tools" "linux" "documentation" "userland" "firmware" "noobs")

#for ech git project
for project in ${arry_download[@]}
do
	echo $project
	while [ ! -d "$HOME/Raspberrypi/$project" ]
	do
		echo "will download git $project----------";
		git clone -v https://github.com/raspberrypi/$project.git
	done
	echo "download $project sucess!!!"
done