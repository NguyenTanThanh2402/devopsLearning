#!/bin/bash
echo "===== CPU ====="
top -bn1 | grep "Cpu(s)"

echo "===== MEMORY ====="
free -h

echo "===== DISK ====="
df -h /

echo "===== TOP 5 CPU ====="
ps -eo pid,cmd,%cpu --sort=-%cpu | head -6

echo "===== TOP 5 MEMORY ====="
ps -eo pid,cmd,%mem --sort=-%mem | head -6