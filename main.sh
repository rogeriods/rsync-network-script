#!/bin/bash

sudo mount -t cifs //<net_ip>/<folder> /mnt/<folder_name>/ -o username=username@domain,password=passwd
rsync -avzru --delete --log-file=/home/<user_name>/<logs_folder_name>/<file_name>.log /mnt/<folder_name>/ /home/<user_name>/<folder_name>/
sudo umount /mnt/<folder_name>/
