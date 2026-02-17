# Day 15 – DNS, IPs, Subnets & Ports

## DNS basics

Type `google.com` → browser cache → DNS resolver → root/TLD servers → gets IP → connects

**Record types:**
- A = IPv4
- AAAA = IPv6
- CNAME = alias
- MX = mail server
- NS = nameserver

```bash
dig google.com
# Got: 142.250.185.46, TTL 300s
```

---

## IP stuff

**IPv4:** `192.168.1.10` (4 octets, 0-255 each)

**Public vs Private:**
- Public: `8.8.8.8` (works on internet)
- Private: `192.168.1.10` (local only)

**Private ranges:**
- 10.x.x.x
- 172.16.x.x to 172.31.x.x
- 192.168.x.x

```bash
ip addr show
# My IP: 192.168.1.100 (private)
```

---

## CIDR & Subnetting

`192.168.1.0/24` = first 24 bits = network, last 8 = hosts

Why? Better organization, security, less broadcast noise

| CIDR | Subnet Mask     | Total | Usable |
|------|-----------------|-------|--------|
| /24  | 255.255.255.0   | 256   | 254    |
| /16  | 255.255.0.0     | 65536 | 65534  |
| /28  | 255.255.255.240 | 16    | 14     |

Usable = Total - 2 (network + broadcast)

---

## Ports

IP = building, Port = apartment number

| Port  | Service |
|-------|---------|
| 22    | SSH     |
| 80    | HTTP    |
| 443   | HTTPS   |
| 53    | DNS     |
| 3306  | MySQL   |
| 6379  | Redis   |
| 27017 | MongoDB |

```bash
ss -tulpn
# Saw: SSH on 22, Nginx on 80
```

---

## Real scenarios

**`curl http://myapp.com:8080`**
- DNS resolves myapp.com → IP
- TCP connects to port 8080
- HTTP request sent

**DB not reachable at `10.0.1.50:3306`?**
1. `ping 10.0.1.50` (host up?)
2. `nc -zv 10.0.1.50 3306` (port open?)
3. Check firewall/security groups

---

## Notes

- DNS = internet phonebook
- Private IPs save address space
- /24 is common for small networks
- Always check port + firewall when services fail
