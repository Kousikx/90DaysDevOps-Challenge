#!/bin/bash
set -euo pipefail

count=0

rename_logs() {
  for file in *.log; do
    if [ -f "$file" ]; then
      mv "$file" "$file.bak"
      ((count++))
    fi
  done
}

rename_logs
echo "Renamed $count files."
