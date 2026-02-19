#!/bin/bash
set -euo pipefail

LOG="sample.log"

echo "Total ERROR count:"
grep -c "ERROR" "$LOG"

echo
echo "Critical events:"
grep -n "CRITICAL" "$LOG"

echo
echo "Top 3 ERROR messages:"
grep "ERROR" "$LOG" | sort | uniq -c | sort -rn | head -3
