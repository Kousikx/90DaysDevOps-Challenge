# Day 15 – Networking Concepts: DNS, IP, Subnets & Ports

## Overview
Today I focused on understanding the core networking concepts that every DevOps
engineer must know. This day was more about concepts than commands and helped me
connect how real network traffic flows in applications.

---

## Task 1: DNS – How Names Become IPs
When I type google.com in a browser, the system contacts a DNS server to resolve
the domain name into an IP address. Once the IP is received, the browser connects
to that IP using HTTP or HTTPS.

### DNS Record Types
- A: Maps a domain to an IPv4 address
- AAAA: Maps a domain to an IPv6 address
- CNAME: Points one domain name to another
- MX: Specifies mail servers
- NS: Defines authoritative DNS servers

### dig Output
I ran dig google.com and identified the A record and TTL from the response.

---

## Task 2: IP Addressing
An IPv4 address is a 32-bit number written in four parts (0–255).
Example: 192.168.1.10

### Public vs Private IP
- Public IPs are accessible from the internet (e.g., 8.8.8.8)
- Private IPs are used inside internal networks (e.g., 192.168.1.10)

### Private IP Ranges
- 10.0.0.0 – 10.255.255.255
- 172.16.0.0 – 172.31.255.255
- 192.168.0.0 – 192.168.255.255

I used ip addr show and confirmed my system is using a private IP address.

---

## Task 3: CIDR & Subnetting

### What CIDR Means
In 192.168.1.0/24, the /24 represents the network portion of the address.

### CIDR Table

| CIDR | Subnet Mask | Total IPs | Usable Hosts |
|-----|------------|-----------|--------------|
| /24 | 255.255.255.0 | 256 | 254 |
| /16 | 255.255.0.0 | 65,536 | 65,534 |
| /28 | 255.255.255.240 | 16 | 14 |

### Why We Subnet
Subnetting helps improve security, manage traffic, and efficiently use IP space.

---

## Task 4: Ports – The Doors to Services

A port identifies which service should receive network traffic.
Multiple services can run on the same IP using different ports.

### Common Ports
- 22 → SSH
- 80 → HTTP
- 443 → HTTPS
- 53 → DNS
- 3306 → MySQL
- 6379 → Redis
- 27017 → MongoDB

I used ss -tulpn to identify listening ports and matched them to services.

---

## Task 5: Putting It Together

### curl http://myapp.com:8080
This involves DNS resolution, IP addressing, TCP transport, HTTP protocol,
and a custom application port (8080).

### App cannot reach DB at 10.0.1.50:3306
First, I would check network connectivity, then verify the port is open and
confirm the database service is running.

---

## What I Learned
1. DNS, IPs, subnets, and ports work together for every network request.
2. CIDR notation helps define network size and boundaries.
3. Knowing common ports speeds up troubleshooting.

---

## Key Takeaway
Understanding networking fundamentals helps identify problems quickly and
avoid guesswork during real DevOps incidents.

