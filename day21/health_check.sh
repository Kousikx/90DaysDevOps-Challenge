#!/bin/bash
set -euo pipefail

check_disk() {
  usage=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')
  echo "Disk Usage: $usage%"

  if [ "$usage" -gt 80 ]; then
    echo "WARNING: Disk usage above 80%"
  fi
}

check_memory() {
  free -h | awk '/Mem:/ {print "Memory Usage: "$3 "/" $2}'
}

check_ssh() {
  if systemctl is-active --quiet ssh; then
    echo "SSH Service: Running"
  else
    echo "SSH Service: Not Running"
    exit 1
  fi
}

main() {
  check_disk
  check_memory
  check_ssh
  echo "System Health Check Completed"
}

main
