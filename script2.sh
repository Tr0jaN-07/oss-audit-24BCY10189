#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Satwik Singh Chauhan | Reg No: 24BCY10189

PACKAGE="git"

# Prefer dpkg first (Debian/Ubuntu/Kali systems)
if command -v dpkg &>/dev/null; then
  PKG_MGR="dpkg"
  dpkg -s $PACKAGE &>/dev/null
  STATUS=$?

elif command -v rpm &>/dev/null; then
  PKG_MGR="rpm"
  rpm -q $PACKAGE &>/dev/null
  STATUS=$?

else
  echo "No supported package manager found (rpm/dpkg)."
  exit 1
fi

echo "Package Inspector — checking: $PACKAGE"
echo "Package manager detected: $PKG_MGR"
echo "-------------------------------------------"

if [ $STATUS -eq 0 ]; then
  echo "Status : INSTALLED"

  if [ "$PKG_MGR" = "rpm" ]; then
    VERSION=$(rpm -qi $PACKAGE | grep "^Version" | awk '{print $3}')
    PKG_LICENSE=$(rpm -qi $PACKAGE | grep "^License" | awk '{print $3}')
    SUMMARY=$(rpm -qi $PACKAGE | grep "^Summary" | cut -d: -f2 | xargs)

  else
    VERSION=$(dpkg -s $PACKAGE | grep "^Version:" | awk '{print $2}')
    PKG_LICENSE=$(dpkg -s $PACKAGE | grep "^License:" | awk '{print $2}')
    SUMMARY=$(dpkg -s $PACKAGE | grep "^Description:" | cut -d: -f2 | xargs)

    # fallback if license missing
    if [ -z "$PKG_LICENSE" ]; then
      PKG_LICENSE="GPL-2.0"
    fi
  fi

  echo "Version : $VERSION"
  echo "License : $PKG_LICENSE"
  echo "Summary : $SUMMARY"

else
  echo "Status  : NOT INSTALLED"
  echo "Install with: sudo apt install $PACKAGE"
fi

echo ""
echo "Philosophy note:"

case $PACKAGE in
  git)
    echo " Git emerged out of necessity — Linus Torvalds assembled it in two weeks"
    echo " after BitKeeper was pulled from Linux kernel development."
    echo " It is now the foundation of virtually all software development worldwide."
    ;;
  *)
    echo " Open source software grants users the freedom to understand and improve"
    echo " the tools they depend on."
    ;;
esac
