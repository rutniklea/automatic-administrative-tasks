# Automatic Administrative Tasks Script

This advanced Bash script automates essential administrative tasks for system management. It simplifies routine operations, ensuring system efficiency and freeing up time for other priorities.

---

## Features

- **⚠️ Alerts**: Automatically detects and notifies you of high CPU or memory usage.
- **📜 Log Management**: Generates detailed performance logs for easy analysis.
- **📦 Backups**: Automatically backs up specified directories on a schedule.
- **🧹 Scheduled Cleanup**: Removes temporary and log files older than a specified date.
- **📈 Disk and Network Monitoring**: Includes enhanced disk usage and network activity reports.

---

## Prerequisites

Ensure the following tools are installed on your system before running the script:

- `mpstat` (part of the `sysstat` package)
- `df` (disk usage utility)
- `tar` (for backups)
- `crontab` (for scheduling tasks)

### Installation of Required Tools

For Debian/Ubuntu-based systems:
```bash
sudo apt update
sudo apt install sysstat tar
