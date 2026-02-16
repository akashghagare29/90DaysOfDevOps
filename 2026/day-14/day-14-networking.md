# Day 14 – Networking Basics

## OSI vs TCP/IP

OSI = 7 layers (Physical → Data Link → Network → Transport → Session → Presentation → Application)
TCP/IP = 4 layers (Link → Internet → Transport → Application)

**Where stuff sits:**
- IP = Internet layer
- TCP/UDP = Transport layer  
- HTTP/DNS = Application layer

Example: `curl https://google.com` goes through App → TCP → IP

---

## Commands I ran

```bash
# Check my IP
hostname -I
# Got: 192.168.1.100

# Test connectivity
ping google.com
# 20ms latency, no packet loss

# Check route
traceroute google.com
# 12 hops, all good

# See what's listening
ss -tulpn
# SSH on 22, Nginx on 80

# DNS lookup
dig google.com
# Resolved to 142.250.185.46

# HTTP test
curl -I https://google.com
# Got 301 redirect

# Active connections
netstat -an | head
# 5 ESTABLISHED, 3 LISTEN
```

---

## Port check practice

Tested SSH on port 22:
```bash
ss -tulpn | grep :22
nc -zv localhost 22
```
Worked fine. If it didn't, I'd check:
- `systemctl status ssh`
- firewall rules

---

## What I learned

- `ping` is fastest way to check if network is broken
- DNS fails? Check `/etc/resolv.conf` and use `dig`
- HTTP 500? Check app logs with `journalctl`
- Always verify ports with `ss -tulpn` during incidents
