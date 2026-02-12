# Day 19 – Shell Scripting Project: Log Rotation, Backup & Crontab

## Overview
Today I worked on a mini project that applies shell scripting concepts
to real-world maintenance tasks like log rotation and server backups.
This felt very close to actual DevOps automation work.

---

## Log Rotation Script
I created a script that compresses .log files older than 7 days and
removes compressed files older than 30 days.
It also checks if the log directory exists before running.

---

## Backup Script
I wrote a backup script that creates a timestamped archive of a given
source directory and stores it in a destination folder.
The script verifies successful creation and deletes backups older than 14 days.

---

## Crontab Understanding
I reviewed cron syntax and wrote scheduling entries for:
- Daily log rotation at 2 AM
- Weekly backup every Sunday at 3 AM
- Health check every 5 minutes

---

## Maintenance Script
I combined log rotation and backup into one maintenance script.
All outputs were logged with timestamps to /var/log/maintenance.log.

---

## Cron Entries
0 2 * * * /path/to/log_rotate.sh /var/log  
0 3 * * 0 /path/to/backup.sh /etc /backups  
*/5 * * * * /path/to/health_check.sh  
0 1 * * * /path/to/maintenance.sh  

---

## What I Learned
1. Real-world automation combines multiple scripts into scheduled jobs.
2. Error handling and checks make scripts safer in production.
3. Cron scheduling is essential for automated server maintenance.

---

## Key Takeaway
This project showed how DevOps engineers automate routine maintenance tasks
like backups and log cleanup using shell scripts and cron jobs.

