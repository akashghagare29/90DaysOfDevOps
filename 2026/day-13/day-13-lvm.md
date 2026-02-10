# 🐧 Day 13 – Linux Volume Management (LVM)

Today I learned LVM to manage storage flexibly – create, extend, and mount volumes.

---

## 📦 What is LVM?

LVM (Logical Volume Manager) allows flexible disk management:
- **Physical Volume (PV)** – Raw disk/partition
- **Volume Group (VG)** – Pool of storage from PVs
- **Logical Volume (LV)** – Virtual partition you can resize

---

## 🔧 Commands Used

### Task 1: Check Current Storage
```bash
lsblk                    # List block devices
pvs                      # List physical volumes
vgs                      # List volume groups
lvs                      # List logical volumes
df -h                    # Check disk usage
```

### Task 2: Create Physical Volume
```bash
lvm> pvcreate /dev/nvme2n1  # Initialize disk for LVM
lvm> pvs                 # Verify PV created
```

### Task 3: Create Volume Group
```bash
lvm> vgcreate tws_vg /dev/nvme2n1   # Create VG named 'tws_vg'
lvm> vgs                            # Verify VG created
```

### Task 4: Create Logical Volume
```bash
lvm> lvcreate -L 2G tws_vg -n tws_devops_lv   # Create 2G LV
lvm> lvs                                       # Verify LV created
```

### Task 5: Format and Mount
```bash
sudo mkfs -t ext4 /dev/tws_vg/tws_devops_lv             # Format with ext4
sudo mkdir -p /mnt/devops                        # Create mount point
sudo mount /dev/tws_vg/tws_admin_lv /mnt/devops    # Mount the volume
df -h /mnt/devops                                 # Verify mounted
```

### Task 6: Extend the Volume
```bash
lvm> lvextend -L 3G /dev/tws_vg/tws_admin_lv     # Extend by 3G
lvm> lvs                                         # Verify LV created
lvm> exit                                        # Exit from LVM
sudo resize2fs /dev/tws_vg/tws_admin_lv          # Resize filesystem
df -h /mnt/admin                                 # Verify new size
```

---

## 💡 What I Learned

1. **LVM provides flexibility** – Can resize volumes without downtime
2. **Three-layer structure** – PV → VG → LV makes storage management modular
3. **Real-world use case** – Essential for production servers where storage needs grow

---

## 🎯 Key Takeaway

LVM is crucial for DevOps engineers managing production servers. Instead of repartitioning disks (risky!), you can extend volumes on-the-fly.

---
