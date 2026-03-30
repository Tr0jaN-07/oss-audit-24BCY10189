#!/bin/bash
# =============================================================================
# Script 1: System Identity Report
# Author: Satwik singh chauhan| Roll No: 24BCY10189
# Course: Open Source Software Audit — Git
# Description: Displays a formatted system identity report using variables,
#              command substitution, and echo. Shows distro, kernel, user,
#              uptime, date, and a FOSS license message.
# =============================================================================
# NOTE: Command substitution means $(...) captures output of a command
#            and assigns it to a variable. e.g., KERNEL=$(uname -r)
# =============================================================================

# --- Variables using command substitution ---
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')
KERNEL=$(uname -r)
ARCH=$(uname -m)
CURRENT_USER=$(whoami)
HOSTNAME=$(hostname)
UPTIME=$(uptime -p)
CURRENT_DATE=$(date '+%A, %d %B %Y')
CURRENT_TIME=$(date '+%H:%M:%S')
IP_ADDRESS=$(hostname -I | awk '{print $1}')

# --- Formatting helper ---
DIVIDER="============================================================"
THIN_DIV="------------------------------------------------------------"

# --- Report Output ---
echo ""
echo "$DIVIDER"
echo "        SYSTEM IDENTITY REPORT — OSS AUDIT PROJECT"
echo "        Student: Satwik singh chauhan  |  Roll No: 24BCY10189"
echo "$DIVIDER"
echo ""

echo "  [SYSTEM INFORMATION]"
echo "$THIN_DIV"
echo "  Operating System  : $DISTRO"
echo "  Kernel Version    : $KERNEL"
echo "  Architecture      : $ARCH"
echo "  Hostname          : $HOSTNAME"
echo "  IP Address        : $IP_ADDRESS"
echo ""

echo "  [SESSION INFORMATION]"
echo "$THIN_DIV"
echo "  Logged-in User    : $CURRENT_USER"
echo "  System Uptime     : $UPTIME"
echo "  Date              : $CURRENT_DATE"
echo "  Time              : $CURRENT_TIME"
echo ""                                                                               
