# 🐧 Day 05 – Linux Troubleshooting Drill: CPU, Memory, and Logs

Practiced inspecting **processes, services, and logs** using common Linux commands and service inspected: **ssh**

---

## 🔄 Process Checks

```bash
ps aux | head -5 - Check running processes
```

```bash
pgrep -u root sshd - Look up or signal processes based on name and other attributes
```

```bash 
top -b -n 1 | head -10 - Real-time process monitoring (batch mode)

htop - Real-time process monitoring (batch mode)
```

## 🔧 Check ssh service status

```bash
systemctl status <service_name> 
```

## 📜 Log Checks

```bash
tail -n 20 /var/log/auth.log - View last 20 lines of authentication log
```
```bash
head -n 20 /var/log/auth.log - View first 20 lines of authentication log
```
