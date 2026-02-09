# 🐧 Day 07 – Linux File System Hierarchy & Scenario-Based Practice

Today’s learning was about understanding where things live in Linux and how that knowledge helps in real-world scenarios.

```bash
/ – Root of the filesystem; everything starts here

/home – Contains home directories for regular users

/root – Home directory of the root (admin) user

/etc – Stores system-wide configuration files

/var/log – Holds system and application log files (critical for troubleshooting)

/tmp – Stores temporary files, usually cleared on reboot

/bin – Essential user commands required for system boot and basic operation

/usr/bin – Standard user commands and utilities installed by the system

/opt – Optional or third-party application software installed separately from system packa
```
## Hands-on commands

```bash
du -sh /var/log/* 2>/dev/null | sort -h | tail -5 - Shows the top 5 largest directories/files in /var/log, helping identify disk usage issues.

cat /etc/hostname - Displays the system’s hostname, which is useful for server identification and debugging.

ls -la ~ Lists all files (including hidden ones) in your home directory with permissions and ownership details.
```

## Scenario 1: Service Not Starting

```bash
Step 1: systemctl status myapp 
Why: Confirms whether the service is stopped, failed, or crashing.

Step 2: journalctl -u myapp -n 50
Why: Shows why the service failed (config error, permission issue, missing dependency).

Step 3: systemctl is-enabled myapp
Why: Checks whether the myapp service is configured to start automatically on system boot.
```

## Scenario 2: High CPU Usage

```bash
Step 1: top
Why: Shows all real time CPU and memory usage which will helps to identify processes using high cpu usage

Step 2: ps aux --sort=%cpu | head -5
Why: Lists the top 5 processes consuming the most CPU, helping to pinpoint the culprit.

Step 3: strace -p <PID>
Why: Attaches to the process to see system calls and signals, which can reveal what the
```