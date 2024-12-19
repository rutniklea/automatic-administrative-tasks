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
```

---

## Getting Started

### Clone the Repository
Clone this repository to your local machine:
```bash
git clone https://github.com/rutniklea/automatic-administrative-tasks.git
cd automatic-administrative-tasks
```

### Make the Script Executable
Ensure the script is executable:
```bash
chmod +x automatic_admin.sh
```

### Run the Script
Execute the script with elevated privileges:
```bash
sudo ./automatic_admin.sh
```

---

## Author

**Lea Rutnik**  
Linux enthusiast, developer, and automation expert. Passionate about simplifying workflows and enhancing system efficiency.  

- **GitHub**: [rutniklea](https://github.com/rutniklea)  
- **LinkedIn**: [Lea Rutnik](https://www.linkedin.com/in/lea-rutnik/)  
- **YouTube**: [Lea Rutnik Channel](https://www.youtube.com/)

---

## License
This project is licensed under the MIT License. See the LICENSE file for more details.

---

## Contributions
Contributions, issues, and feature requests are welcome! Feel free to check the [issues page](https://github.com/rutniklea/automatic-administrative-tasks/issues).

---

## Feedback
If you have any feedback, feel free to reach out via GitHub or LinkedIn. Thank you for using this project!
