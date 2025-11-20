#!/bin/bash

# 设置源目录和备份目录
SOURCE_DIR="/home/com1rr/documents"
BACKUP_DIR="/home/com1rr/backups"
DATE=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_FILE="${BACKUP_DIR}/backup_${DATE}.tar.gz"

# 检查源目录是否存在
if [ ! -d "$SOURCE_DIR" ]; then
    echo "源目录 $SOURCE_DIR 不存在，备份失败！"
    exit 1
fi

# 创建备份
echo "正在备份 $SOURCE_DIR 到 $BACKUP_FILE..."
tar -czf "$BACKUP_FILE" -C "$SOURCE_DIR" .

# 检查备份是否成功
if [ $? -eq 0 ]; then
    echo "备份成功！文件保存在 $BACKUP_FILE"
else
    echo "备份失败！"
    exit 1
fi

