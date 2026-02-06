# Day 12 – Revision & Breather (Days 01–11)

## 1. Learning Plan Check (Day 01)
My goal to move into DevOps from a non-technical background still feels right.
No major changes needed.
I need more practice with Linux commands to gain confidence.

## 2. Processes & Services Review
Commands re-run today:
- ps aux
- systemctl status ssh

Observation:
I can now identify running processes and check whether a service is active or inactive.

## 3. File Skills Practice
Commands practiced:
- mkdir
- echo >>
- ls -l
- chmod
- chown

I am becoming comfortable working with files and permissions from the terminal.

## 4. Cheat Sheet – Top 5 Commands I’d Use First
1. ls -l → check files, permissions, ownership
2. cd → move quickly between directories
3. ps aux → check running processes
4. systemctl status → check service health
5. journalctl → view service logs

## 5. User / Group Sanity Check
I created a test user / verified file ownership using:
- useradd
- id
- ls -l

This helped me confirm ownership and group behavior.

---

## Mini Self-Check

### Q1: Which 3 commands save you the most time right now, and why?
- ls -l → quickly understand files and permissions
- cd → faster navigation
- systemctl status → immediate service health check

### Q2: How do you check if a service is healthy?
Commands:
- systemctl status <service>
- ps aux | grep <service>
- journalctl -u <service>

### Q3: How do you safely change ownership or permissions?
Example:
sudo chown user:group filename
chmod 644 filename

I always verify using ls -l after changes.

### Q4: Focus for the next 3 days
- Practice chmod and permissions more
- Improve command confidence
- Understand real-world Linux scenarios

---

## Key Takeaway
Revision helped me realize I am progressing.
Consistency is working, even if learning feels slow.

