#!/bin/bash

# 输出当前日期
echo "系统信息监控报告 - $(date)"

# CPU 使用情况
echo -e "\nCPU 使用情况："
top -n 1 | grep "Cpu(s)"

# 内存使用情况
echo -e "\n内存使用情况："
free -h

# 磁盘空间使用情况
echo -e "\n磁盘空间使用情况："
df -h

# 网络连接情况
echo -e "\n网络连接情况："
netstat -tuln

