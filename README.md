# (rsync) Network Script

Recursive mirror network backup using rsync on Ubuntu Distro.

## First Steps

```sh
sudo apt update
sudo apt install cifs-utils
```

If you want to execute daily on your crontab make sure your user can access as suders:

```sh
sudo visudo
```

Change or add this configuration:

```sh
sudo ALL=(ALL:ALL) ALL
user ALL=(ALL) NOPASSWD:ALL
```

```sh
sudo ls
```

Create the folder where you will mount the drive in the future and the folder you will store the copied files:

```sh
# source
sudo mkdir -p /mnt/<folder_name>

# destination
sudo mkdir -p /home/<user_name>/<folder_name>

# log files
sudo mkdir -p /home/<user_name>/<logs_folder_name>
```

Now you are ready to configure an run the script.

## Crontab Model

Every 9am

```sh
0 9 * * * /home/<user>/rsync-network-script/main.sh
```
