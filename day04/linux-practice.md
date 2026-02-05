# Linux Practice – Day 04

## Process Checks
- Ran `ps aux` to view all running processes.
- Ran `top` to monitor CPU and memory usage in real time.

## Service Checks
- Checked SSH service using `systemctl status ssh`.
- Listed active services using `systemctl list-units --type=service --state=running`.

## Log Checks
- Viewed SSH logs using `journalctl -u ssh`.
- Checked last 50 log lines using `journalctl -u ssh -n 50`.

## Mini Troubleshooting
- Verified SSH service status.
- Restarted SSH service if needed.
- Checked logs to confirm service health.

