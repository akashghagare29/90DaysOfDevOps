# 🐧 Day 09 – Linux User & Group Management Challenge

Today's goal is to practice user and group management by completing hands-on challenges.

## Users & Groups Created
- Users: tokyo, berlin, professor, nairobi
- Groups: developers, admins, project-team

## Group Assignments

```bash
developers: tokyo,berlin
admins: berlin,professor
project-team: nairobi,tokyo
```

## Directories Created
```bash
drwxrwxr-x  2 root   developers   4096 Feb  9 14:07 dev-project
drwxrwxr-x  2 ubuntu project-team 4096 Feb  9 14:22 team-workspace
```

## Commands Used
```bash
useradd: To add new users
sudo useradd -m username

groupadd: To create new groups
sudo groupadd groupname

passwd: To update password
sudo passwd username

usermod: To modify user group memberships
usermod -aG groupname username

mkdir: To create directories
sudo mkdir /path/to/directory

chown: To change directory ownership
sudo chown user:group /path/to/directory

chmod: To set directory permissions
sudo chmod 775 /path/to/directory
```

## What I Learned
- How to create and manage users and groups in Linux
- How to set permissions and ownership for directories
- The importance of proper user and group management for system security and organization