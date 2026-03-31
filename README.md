# oss-audit-24BCE10799
Vityarthi OSS Project
# Open Source Software Audit Project

**Student Name:** Dhruv Gupta 
**Roll Number:** 24BCE10799   
**Chosen Software:** VLC Media Player

---

## 📋 Project Overview
This repository contains a suite of five Bash scripts designed to perform a comprehensive audit of a Linux system and its open-source components. The project covers system identification, package inspection, resource auditing, log analysis, and interactive document generation.

## 📂 Script Descriptions

### 1. System Identity Auditor (`script1.sh`)
**Purpose:** Generates a system welcome screen.
- **Functionality:** Displays the Linux distribution name, kernel version, current user, home directory, and system uptime.
- **Concepts:** Variables, Command Substitution `$(...)`, and Environment Variables.

### 2. FOSS Package Inspector (`script2.sh`)
**Purpose:** Audits the status of the chosen software (**VLC**).
- **Functionality:** Checks if VLC is installed, retrieves version/license metadata, and prints a software philosophy statement.
- **Concepts:** If-then-else logic, Case statements, and Package Manager integration (`dpkg`/`rpm`).

### 3. Disk and Permission Auditor (`script3.sh`)
**Purpose:** Reports on system resource usage and security settings.
- **Functionality:** Loops through major system directories to report their physical size and permission/ownership strings.
- **Concepts:** For loops, Arrays, `du` (disk usage), and `awk` for text parsing.

### 4. Log File Analyzer (`script4.sh`)
**Purpose:** Automates the monitoring of system health via logs.
- **Functionality:** Reads a log file line-by-line to count occurrences of a specific keyword (e.g., "error") and displays the most recent matches.
- **Concepts:** While-read loops, Command-line arguments (`$1`, `$2`), and String filtering with `grep`.

### 5. Open Source Manifesto Generator (`script5.sh`)
**Purpose:** Demonstrates user interaction and permanent file storage.
- **Functionality:** Asks the user three philosophical questions and composes the answers into a unique `.txt` manifesto.
- **Concepts:** User input (`read -p`), File redirection (`>`), and Appending (`>>`).

---

## 🛠️ Dependencies & Requirements
To run these scripts, ensure your environment includes:
* **Interpreter:** Bash Shell (`/bin/bash`).
* **Utilities:** `grep`, `awk`, `du`, `uptime`, `ls`, and `tail`.
* **Package Manager:** `apt` (Standard on Ubuntu/WSL).
* **VLC Media Player:** Must be installed for Script 2 to function (`sudo apt install vlc`).

---


# 🛠️ Installation & Setup

### 1. Prerequisites
Ensure you are using a Linux-based environment (Ubuntu/WSL). You must have **VLC** installed for the scripts to perform a full audit:
```bash
sudo apt update && sudo apt install vlc -y
```

### 2. Clone the Repository
If you are a new user, clone this project to your local machine:
```bash
git clone https://github.com/dhruvgupta0602/oss-audit-24BCE10799.git
cd oss-audit-24BCE10799
```

### 3. Set Execution Permissions
Linux requires files to be marked as executable before they can run:
```bash
chmod +x *.sh
```
---

## 🚀 Execution Guide
Run the scripts in the following order to perform a complete system audit:

### 🔍 System & Software Audit
```bash
./script1.sh                  # Identify System Kernel & User
./script2.sh                  # Inspect VLC Installation & License
```

### 🛡️ Security & Resource Audit
```bash
sudo ./script3.sh             # Audit Directories (Requires Sudo)
sudo ./script4.sh /var/log/syslog "error"  # Analyze Logs for Errors
```

### ✍️ Interactive Manifesto
def generate your Open Source Manifesto.
```bash
./script5.sh                  # Generate your Open Source Manifesto 
```
---

## 📑 Technical Summary 
This project follows the **Unix Philosophy**: "Write programs that do one thing and do it well." By utilizing standard GNU utilities like `grep`, `awk`, and `sed`, these scripts remain lightweight and portable. The use of **GPL v3.0** ethics ensures that the software remains free and transparent for all users.
---
