# Set up a Palworld dedicated server on Linux
A simplified script to set up a Palworld dedicated server on Debian Linux

> [!IMPORTANT]
> This script has only been tested on Debian 64-bit systems. Users on other operating systems or architectures may experience different results. Please proceed with caution and verify compatibility before use.

> [!CAUTION]
> - This script is based on Debian 12, it might work with other distros.
> - The game is in early access, this script will help you install your own dedicated server on Linux but it will not solve all the problems related to the game itself.

# Features

> - cleanup_script.sh - Designed for disk space optimization. It deletes the oldest file if it exists and keep the new save file. Very efficient to only keep the latest save file.
> - palworld-maintenance.sh -  Updates the Palworld server using SteamCMD, creates a backup of the server files with a timestamp, and uploads the backup file to an FTP server for server migration.
> - palworld.service - Ensures proper startup, runtime management, and cleanup processes associated with the server operation.

## Server Requirements

| Resource | Minimum | Recommended                              |
|----------|---------|------------------------------------------|
| CPU      | 4 cores | 4+ cores                                 |
| RAM      | 8GB     | Recommend over 32GB for stable operation |
| Storage  | 4GB     | 12GB                                     |


