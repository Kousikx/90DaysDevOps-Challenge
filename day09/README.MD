# Day 09 – Linux User & Group Management Challenge

## Overview
Today I practiced Linux user and group management.
The goal was to understand how multiple users can be managed and how shared
access is controlled using groups and permissions.

This is an important skill in DevOps because teams often share servers
and controlled access is required.

---

## Users & Groups Created

### Users
- tokyo
- berlin
- professor
- nairobi

### Groups
- developers
- admins
- project-team

---

## Group Assignments
- tokyo → developers, project-team
- berlin → developers, admins
- professor → admins
- nairobi → project-team

---

## Directories Created

### /opt/dev-project
- Group owner: developers
- Permissions: 775 (rwxrwxr-x)
- Shared access for developers group

### /opt/team-workspace
- Group owner: project-team
- Permissions: 775
- Shared workspace for team members

---

## Commands Used
useradd -m  
passwd  
groupadd  
usermod -aG  
groups  
mkdir  
chgrp  
chmod  
ls -l / ls -ld  
sudo -u username command  

---

## Testing Performed
- Created files as different users using sudo -u
- Verified that users in the same group could access shared directories
- Confirmed permissions using ls -l and ls -ld

---

## What I Learned
1. Groups are the best way to manage shared access in Linux.
2. Permissions (775) allow group collaboration without giving access to others.
3. sudo -u is useful to test access as another user without logging out.

---

## Key Takeaway
User and group management is critical for secure collaboration.
This exercise helped me understand how DevOps teams manage shared environments
without giving unnecessary permissions.

