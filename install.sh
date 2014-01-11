#!/bin/bash

####
## Variables
####

echo "===== sysTools installation ====="

app_name="sysTools"
default_path="/usr/bin"
file_dir="./cmd"
file_list="gitter"

####
## Asking install dir
####
read -e -i "$default_path" -p "Default installation path: " input
path="${input:-$default_path}/" #$app_name

####
## Install modules
####

default_ans="Y"
echo "===== Installation process ====="
for f in $file_list; do
	read -e -i "$default_ans" -p "Install $f (to: $path)? [Y|n] " ans
	ans="${ans:-$default_ans}"
	if [[ $ans == "Y" || $ans == "y" ]]; then
		sudo install -D -t $path $file_dir/$f
	fi
#	inst_module="${ans:-Y"
#	
done

exit 0