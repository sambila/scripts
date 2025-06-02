# Scripts Collection

A collection of useful shell scripts and Python tools for system administration and file management.

## 📋 Overview

This repository contains various automation scripts for daily administrative tasks, file management, and server maintenance.

## 🛠️ Available Scripts

### System Administration
- **`checknstartpq.py`** - PostgreSQL Service Monitor  
  Checks PostgreSQL service status and restarts it if needed

- **`sleep.sh`** - System Sleep Utility  
  Simple script for system sleep mode

### File Management
- **`move2archiv.sh`** - Automatic Archiving  
  Moves files older than 3 years to structured archive folders with email notification

- **`remove_pdf.sh`** - PDF Filename Cleanup  
  Removes spaces from PDF filenames in a specified directory

### Server Utilities
- **`copynetcup.sh`** - Secure File Transfer  
  Transfers files between servers with checksum verification

- **`geht.sh`** - Basic Utility Script  
  General helper script for various tasks

- **`if.sh`** - Conditional Logic Helper  
  Script for conditional logic and testing

- **`betterorso.sh`** - System Optimization Tool  
  Improvement and optimization helper

## 🚀 Installation & Usage

### Prerequisites
- Bash Shell (for .sh scripts)
- Python 3.x (for .py scripts)
- Appropriate system permissions for service management

### Usage
1. Clone the repository:
```bash
git clone https://github.com/sambila/scripts.git
cd scripts
```

2. Make scripts executable:
```bash
chmod +x *.sh
```

3. Use scripts as needed:
```bash
# Check PostgreSQL status
python3 checknstartpq.py

# Archive files
./move2archiv.sh

# Clean PDF filenames
./remove_pdf.sh
```

## ⚙️ Configuration

**Important:** Before use, paths and parameters must be adjusted in some scripts:

- `move2archiv.sh`: Adjust paths and email address
- `copynetcup.sh`: Configure server addresses and user details

## ⚠️ Security Notes

- Carefully review scripts with administrative privileges
- Adjust paths and configurations before execution
- Use secure authentication for server scripts
- Create backups before running file management scripts

## 📁 Project Structure

```
scripts/
├── checknstartpq.py    # PostgreSQL Service Monitor
├── move2archiv.sh      # Automatic Archiving
├── copynetcup.sh       # Server-to-Server File Transfer
├── remove_pdf.sh       # PDF Filename Cleanup
├── sleep.sh            # System Sleep Utility
├── geht.sh             # General Utility
├── if.sh               # Conditional Logic Helper
├── betterorso.sh       # System Optimization
└── README.md           # This file
```

## 🤝 Contributing

Improvements and new scripts are welcome! Please:
1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Create a pull request

## 📝 License

These scripts are available for free personal and commercial use.

## 📞 Contact

For questions or issues, you can reach me via GitHub: [@sambila](https://github.com/sambila)

---

*Created: February 2021*  
*Last Update: July 2024*