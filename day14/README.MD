# Day 14 – Networking Fundamentals & Hands-on Checks

## Overview
Today I focused on basic networking concepts and practical commands that are used
during real troubleshooting. The goal was not deep theory, but knowing what to
check first when something is not working.

---

## OSI vs TCP/IP (In My Words)
OSI is a conceptual model with 7 layers.
TCP/IP is the practical model used in real systems.

TCP/IP groups multiple OSI layers together to keep things simpler and more usable.

---

## Where Common Protocols Fit
- IP works at the Internet layer
- TCP and UDP work at the Transport layer
- HTTP, HTTPS, and DNS work at the Application layer

Example:
curl https://example.com  
This uses HTTP at the application layer over TCP over IP.

---

## Hands-on Network Checks

### Identity Check
Command used:
hostname -I / ip addr show

Observation:
This shows my system’s IP address and confirms I am connected to a network.

---

### Reachability Check
Command used:
ping google.com

Observation:
Packets were sent and received successfully with low latency and no packet loss.

---

### Path Check
Command used:
tracepath google.com

Observation:
The packets reached the destination through multiple hops, showing the network path.

---

### Port Check
Command used:
ss -tulpn

Observation:
I identified one listening service and its port, which confirmed active services on the system.

---

### DNS Check
Command used:
dig google.com / nslookup google.com

Observation:
The domain name resolved correctly to an IP address.

---

### HTTP Check
Command used:
curl -I https://google.com

Observation:
Received a valid HTTP status code, confirming application-level connectivity.

---

### Connection Snapshot
Command used:
netstat -an | head

Observation:
I observed listening and established connections, giving a quick view of network activity.

---

## Mini Task: Port Probe
I tested a listening port locally using nc or curl.
The port was reachable, confirming the service was running correctly.

If it was not reachable, the next step would be checking the service status or firewall rules.

---

## Reflection

### Fastest Signal When Something Breaks
ping and curl give the fastest indication of whether the issue is network-level or application-level.

### Layer to Check
- If DNS fails: Application layer
- If HTTP returns 500: Application or server-side issue

### Two Follow-up Checks in Real Incidents
1. Check service status using systemctl
2. Check firewall rules and logs

---

## Key Takeaway
Today helped me build a simple and repeatable networking checklist.
These commands are practical and useful in real DevOps troubleshooting scenarios.

