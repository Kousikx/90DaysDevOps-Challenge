# Day 13 – Linux Volume Management (LVM)

## Overview
On Day 13, I learned about **Linux Volume Management (LVM)** and how it helps manage storage
in a flexible and scalable way.

Instead of using fixed disk partitions, LVM allows disks to be created, extended,
and managed dynamically. This is very useful in real DevOps and production environments.

Since I did not have a spare physical disk, I created a virtual disk and used it for practice.

---

## Step-by-Step What I Did

### Step 1: Checked Current Storage
I first checked the existing disks and LVM status using:
lsblk, pvs, vgs, lvs, df -h

This helped me understand the current storage state before making any changes.

---

### Step 2: Created a Physical Volume (PV)
I initialized the virtual disk as a physical volume using pvcreate.
This step prepares the disk to be used by LVM.

---

### Step 3: Created a Volume Group (VG)
I created a volume group named devops-vg.
The volume group acts as a storage pool where logical volumes are created.

---

### Step 4: Created a Logical Volume (LV)
From the volume group, I created a logical volume named app-data with a size of 500 MB.
This logical volume behaves like a regular disk partition.

---

### Step 5: Formatted and Mounted the Volume
I formatted the logical volume with ext4 filesystem and mounted it at /mnt/app-data.
After mounting, the volume became usable for storing files.

---

### Step 6: Extended the Logical Volume
I extended the logical volume by 200 MB and resized the filesystem.
This was done without unmounting the volume, showing the real power of LVM.

---

## Commands Used
- lsblk, pvs, vgs, lvs, df -h
- pvcreate
- vgcreate
- lvcreate
- mkfs.ext4
- mount
- lvextend
- resize2fs

---

## What I Learned Today

1. LVM allows flexible and dynamic disk management.
2. Storage is managed in three layers: PV → VG → LV.
3. Logical volumes can be extended safely without downtime.

---

## Final Takeaway
Today’s LVM practice helped me understand how storage is managed in real Linux systems.
This knowledge is important for DevOps engineers who manage servers, cloud VMs,
and production environments where storage requirements change over time.

