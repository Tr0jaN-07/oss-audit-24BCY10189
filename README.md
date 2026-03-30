# oss-audit-24BCY10189
# oss-audit-24BCY10189

**Open Source Software Audit — Git**
VIT Bhopal University | B.Tech CSE | Open Source Software Course

---

## Student Information

| Field               | Details              |
| ------------------- | -------------------- |
| **Name**            | Satwik Singh Chauhan |
| **Roll Number**     | 24BCY10189           |
| **Course**          | Open Source Software |
| **Chosen Software** | Git                  |

---

## About This Repository

This repository contains five shell scripts written as part of a practical audit of **Git** — a distributed version control system created by Linus Torvalds. The scripts demonstrate core Bash scripting concepts (variables, command substitution, if-else, case statements, for loops, while-read loops, and interactive input) while applying them to real-world system inspection, package analysis, and log monitoring tasks within a Linux environment.

---

## Scripts

### Script 1 — `script1.sh` · System Identity Report

Generates a formatted system identity report using variables and command substitution. Displays OS distribution, kernel version, architecture, hostname, IP address, logged-in user, uptime, and current date/time. Ends with a note referencing open-source licensing principles.

**Key concepts:** Variables, `$()` command substitution, `echo`, `/etc/os-release`, `uname`, `hostname`, `date`, `uptime`.

---

### Script 2 — `script2.sh` · FOSS Package Inspector

Checks whether Git is installed on the system using available package managers (`dpkg` or `rpm`). Displays installation status, version, license, and summary of the package. Includes a short philosophy note explaining Git’s origin and its role in modern software development.

**Key concepts:** `if-else`, command detection, package inspection, `grep`, `awk`, exit codes.

---

### Script 3 — `script3.sh` · Disk and Permission Auditor

Loops through a predefined list of important system directories (`/etc`, `/var/log`, `/home`, `/usr/bin`, `/tmp`) and reports each directory’s permissions, ownership, and disk usage in a structured format. Also checks Git configuration locations such as `/etc/gitconfig`, `~/.gitconfig`, and `.git` directories.

**Key concepts:** `for` loop, arrays, `ls -ld`, `du -sh`, `awk`, directory checks `[ -d ]`.

---

### Script 4 — `script4.sh` · Log File Analyzer

Accepts a log file path and a keyword as command-line arguments. Reads the file line-by-line, counts lines matching the keyword, and displays the last five matching entries. Includes basic validation for file existence and content.

**Key concepts:** Positional arguments `$1 $2`, `while IFS= read -r`, counters, `grep`, `tail`.

**Usage:**

```bash
bash script4.sh /var/log/syslog error
bash script4.sh test.log error
```

---

### Script 5 — `script5.sh` · Open Source Manifesto Generator

Interactively prompts the user with three questions using `read`, then generates a personalised open-source manifesto. The output is saved to a `.txt` file named after the current user and includes a timestamp.

**Key concepts:** `read`, string handling, file redirection `>`, `date`, user interaction.

---

## How to Run

### Prerequisites

* Linux system (Kali Linux / Ubuntu / WSL)
* Bash shell (`bash --version`)
* Standard GNU utilities (`grep`, `awk`, `du`, `ls`, `date`)

---

### Make scripts executable

```bash
chmod +x script1.sh
chmod +x script2.sh
chmod +x script3.sh
chmod +x script4.sh
chmod +x script5.sh
```

---

### Run each script

```bash
# Script 1
bash script1.sh

# Script 2
bash script2.sh

# Script 3
bash script3.sh
# OR (for full access)
sudo bash script3.sh

# Script 4
bash script4.sh test.log error

# Script 5
bash script5.sh
```

---

## Dependencies

| Dependency                  | Used In      | Notes                     |
| --------------------------- | ------------ | ------------------------- |
| `bash`                      | All scripts  | Default shell             |
| `dpkg` / `rpm`              | Script 2     | Package manager detection |
| `grep`                      | Scripts 2, 4 | Pattern matching          |
| `awk`                       | Scripts 2, 3 | Field extraction          |
| `du`, `ls`                  | Script 3     | Disk and permission info  |
| `date`, `uname`, `hostname` | Scripts 1, 5 | System information        |

All required tools are part of standard Linux distributions and typically pre-installed.

---

## Conclusion

This project demonstrates how shell scripting can be used to interact with and audit open-source systems at a practical level. Using Git as a reference, the scripts highlight both the technical and philosophical aspects of open-source software — transparency, control, and the ability to inspect and modify systems without restriction.

---

*Submitted as part of the Open Source Software course audit — VIT Bhopal University*
