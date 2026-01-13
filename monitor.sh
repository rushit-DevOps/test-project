#!/bin/bash

CPU=$(top -bn1 | grep "Cpu" | awk '{print $2}')
DISK=$(df / | tail -1 | awk '{print $5}')

echo "CPU usage: $CPU%"
echo "Disk usage: $DISK"
