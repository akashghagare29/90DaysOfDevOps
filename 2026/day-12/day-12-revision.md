# 🐧 Day 12 – Breather & Revision (Days 01–11)

Today I took a pause to consolidate everything learned from Days 01–11.

---

## 📝 What I Reviewed

### Mindset & Plan (Day 01)
- Revisited my learning goals – still on track
- Weekly time budget is working well (2 hours/day weekdays)
- Focus areas remain: Linux, CI/CD, Docker, Kubernetes

### Processes & Services (Days 04-05)
**Commands I re-ran today:**
```bash
ps aux | head -5
systemctl status ssh
journalctl -u ssh -n 20
```
**Observation:** SSH service running smoothly, no errors in recent logs

### File Skills (Days 06-11)
**Quick practice commands:**
```bash
echo "test" >> practice.txt
chmod 755 practice.txt
chown ubuntu:ubuntu practice.txt
ls -l practice.txt
```

### Cheat Sheet Refresh (Day 03)
**Top 5 commands I'd use first in an incident:**
1. `systemctl status <service>` – Check service health
2. `journalctl -u <service> -n 50` – View recent logs
3. `top` – Check CPU/memory usage
4. `df -h` – Check disk space
5. `ss -tulpn` – Check listening ports

### User/Group Sanity (Days 09-11)
**Quick scenario re-run:**
```bash
sudo useradd testuser
id testuser
sudo chown testuser:testuser practice.txt
ls -l practice.txt
```
**Verified:** User created successfully, ownership changed correctly

---

## 🔍 Mini Self-Check

### 1) Which 3 commands save you the most time right now, and why?
- `systemctl status` – Instant service health check
- `journalctl -u` – Quick log access without navigating directories
- `ls -l` – Shows permissions, ownership, and size in one view

### 2) How do you check if a service is healthy? List the exact 2–3 commands you'd run first.
```bash
systemctl status <service-name>
journalctl -u <service-name> -n 50
ps aux | grep <service-name>
```

### 3) How do you safely change ownership and permissions without breaking access? Give one example command.
```bash
# Always check current state first
ls -l filename

# Change ownership
sudo chown user:group filename

# Set appropriate permissions (e.g., 644 for files, 755 for directories)
chmod 644 filename

# Verify the change
ls -l filename
```

### 4) What will you focus on improving in the next 3 days?
- Networking fundamentals and troubleshooting commands
- LVM (Logical Volume Management) for storage
- Building stronger command muscle memory through daily practice

---

## 💡 Key Takeaways
- Consistency is building confidence – commands feel more natural now
- Process troubleshooting flow is becoming second nature
- File permissions and ownership make more sense with practice
- Ready to move forward with networking and storage concepts

---

## 🎯 Next Steps
- Continue daily practice
- Focus on networking (Day 14)
- Keep building hands-on experience
- Maintain the learning momentum

---

One day at a time. One commit at a time. 🚀
