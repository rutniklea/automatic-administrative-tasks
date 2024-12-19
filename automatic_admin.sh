#!/bin/bash

# ===== CONFIGURATION =====
LOG_FILE="admin_task_log_$(date +%F).log"
BACKUP_DIR="$HOME/admin_task_backups"
CPU_THRESHOLD=80
MEM_THRESHOLD=80
ORGANIZE_DIR="$HOME/Downloads"

# ===== CREATE DIRECTORIES =====
mkdir -p "$BACKUP_DIR"

# ===== FUNCTIONS =====

# Function to log messages
log_message() {
    local message=$1
    echo "$(date +'%Y-%m-%d %H:%M:%S') | $message" | tee -a "$LOG_FILE"
}

# Function to check CPU usage
check_cpu_usage() {
    CPU_USAGE=$(mpstat 1 1 | awk '/Average/ {print 100 - $NF}')
    if (( $(echo "$CPU_USAGE > $CPU_THRESHOLD" | bc -l) )); then
        log_message "⚠️ High CPU Usage: $CPU_USAGE%"
    fi
}

# Function to check memory usage
check_memory_usage() {
    MEM_USAGE=$(free | awk '/Mem/ {printf "%.2f", $3/$2 * 100}')
    if (( $(echo "$MEM_USAGE > $MEM_THRESHOLD" | bc -l) )); then
        log_message "⚠️ High Memory Usage: $MEM_USAGE%"
    fi
}

# Function to organize files
organize_files() {
    log_message "Organizing files in $ORGANIZE_DIR"
    mkdir -p "$ORGANIZE_DIR/Images" "$ORGANIZE_DIR/Documents" "$ORGANIZE_DIR/Others"
    mv "$ORGANIZE_DIR"/*.{jpg,jpeg,png,gif} "$ORGANIZE_DIR/Images/" 2>/dev/null
    mv "$ORGANIZE_DIR"/*.{pdf,doc,docx,txt} "$ORGANIZE_DIR/Documents/" 2>/dev/null
    mv "$ORGANIZE_DIR"/* "$ORGANIZE_DIR/Others/" 2>/dev/null
    log_message "File organization completed"
}

# Function to perform a backup
perform_backup() {
    BACKUP_FILE="$BACKUP_DIR/backup_$(date +%F_%H-%M-%S).tar.gz"
    tar -czf "$BACKUP_FILE" "$HOME/Documents" "$HOME/Pictures" 2>/dev/null
    log_message "Backup created: $BACKUP_FILE"
}

# Function to monitor disk usage
monitor_disk_usage() {
    DISK_USAGE=$(df -h / | awk 'NR==2 {print $5}')
    log_message "Disk Usage: $DISK_USAGE"
}

# ===== TASK EXECUTION =====
log_message "Starting automated administrative tasks..."

# Perform tasks
check_cpu_usage
check_memory_usage
monitor_disk_usage
organize_files
perform_backup

log_message "All tasks completed!"
