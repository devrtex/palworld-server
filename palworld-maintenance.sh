#!/bin/bash

# FTP server details
ftp_server=""
ftp_username=""
ftp_password=""
remote_dir=""

# Run SteamCMD to update Palworld server
/usr/games/steamcmd +login anonymous +app_update 2394010 validate +quit

# Create a new backup with timestamp
backup_file="/home/steam/Palworld_backups/Palworld_$(date '+%Y-%m-%d_%H-%M-%S').tar.gz"
tar -czvf "$backup_file" /home/steam/.steam/steam/steamapps/common/PalServer/Pal/Saved

# Upload the backup file to FTP server using ncftpput
ncftpput -u "$ftp_username" -p "$ftp_password" "$ftp_server" "$remote_dir" "$backup_file"
