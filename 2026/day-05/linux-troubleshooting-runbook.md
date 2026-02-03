# 🐧 Day 05 – Linux Troubleshooting Drill: CPU, Memory, and Logs

Practiced inspecting **CPU, memory, and logs** using common Linux commands and service inspected: **ssh**

---

### Environment commands

```bash
uname - Print system information
lsb_release - Print distribution-specific information
```

### File info commands

```bash
mkdir - To create a directory
pwd - Present work directory
cp - Copy 
mv - Move
rm - Remove
cd - Change directory
ls - List all files/directory
cat - Concatenate files and print on the standard output
```

### Disk / IOCPU / Memory commands

```bash
df -h - Report file system disk space usage
du -sh * - Estimate file space usage
ps - Report a snapshot of the current processes.
top/htop - Display Linux processes
free -m - Display amount of free and used memory in the system
```

### Network commands

```bash
curl - Transfer a URL
ping - Send ICMP ECHO_REQUEST to network hosts
nslookup - Query Internet name servers interactively
traceroute - Print the route packets trace to network host
```

### 🚨 If This Worsens (Next Steps)

- Restart ssh safely
- Increase log verbosity for ssh and recheck logs
- Collect deeper diagnostics (`strace`, `tcpdump`) for connection issues