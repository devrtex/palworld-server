# Set up a Palworld dedicated server on Linux
A simplified script to set up a Palworld dedicated server on Linux with feature to uploads backups to a FTP server for easy migration.

> [!CAUTION]
> - This script is based on Debian 12, it might work with other distros.
> - The game is in early access, this script will help you install your own dedicated server on Linux but it will not solve all the problems related to the game itself.

# Features

> 1. Designed for disk space optimization. It deletes the oldest file if it exists and keep the new save file. Very efficient to only keep the latest save file.
> 2. Creates a backup of the server files, and uploads the backup file to an FTP server for an easy server migration.

## Server Requirements

| Resource | Minimum | Recommended                              |
|----------|---------|------------------------------------------|
| CPU      | 4 cores | 4+ cores                                 |
| RAM      | 8GB     | Recommend over 16GB for stable operation |
| Storage  | 4GB     | 12GB                                     |


