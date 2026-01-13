#!/bin/bash
set -e

echo "===================================="
echo "  GH-OSINT Linux Setup (v0.1)"
echo "===================================="

# -------------------------------------------------
# 1. System update
# -------------------------------------------------
echo "[+] Updating system..."
sudo apt update

# -------------------------------------------------
# 2. Install system dependencies
# -------------------------------------------------
echo "[+] Installing system dependencies..."
sudo apt install -y \
  nmap \
  whois \
  libimage-exiftool-perl \
  git \
  python3 \
  python3-pip \
  python3-venv

# -------------------------------------------------
# 3. Create Python virtual environment
# -------------------------------------------------
echo "[+] Creating Python virtual environment..."
if [ ! -d "/opt/gh-osint-venv" ]; then
  sudo python3 -m venv /opt/gh-osint-venv
  sudo chown -R $USER:$USER /opt/gh-osint-venv
fi

# Upgrade pip
/opt/gh-osint-venv/bin/pip install --upgrade pip

# -------------------------------------------------
# 4. Install theHarvester (REAL version from GitHub)
# -------------------------------------------------
echo "[+] Installing theHarvester..."
if [ ! -d "/opt/theHarvester" ]; then
  sudo git clone https://github.com/laramies/theHarvester.git /opt/theHarvester
  sudo chown -R $USER:$USER /opt/theHarvester
fi

cd /opt/theHarvester

# Install theHarvester using modern Python packaging
/opt/gh-osint-venv/bin/pip install .


# -------------------------------------------------
# 5. Install recon-ng (from GitHub)
# -------------------------------------------------
echo "[+] Installing recon-ng..."
if [ ! -d "/opt/recon-ng" ]; then
  sudo git clone https://github.com/lanmaster53/recon-ng.git /opt/recon-ng
  sudo chown -R $USER:$USER /opt/recon-ng
fi

cd /opt/recon-ng
/opt/gh-osint-venv/bin/pip install -r REQUIREMENTS

# -------------------------------------------------
# 6. Set up aliases (safe & idempotent)
# -------------------------------------------------
echo "[+] Configuring aliases..."

grep -qxF "alias theHarvester=" ~/.bashrc || \
echo "alias theHarvester='cd /opt/theHarvester && /opt/gh-osint-venv/bin/python3 theHarvester.py'" >> ~/.bashrc

grep -qxF "alias recon-ng=" ~/.bashrc || \
echo "alias recon-ng='cd /opt/recon-ng && /opt/gh-osint-venv/bin/python3 recon-ng'" >> ~/.bashrc

# -------------------------------------------------
# 7. Branding
# -------------------------------------------------
echo "[+] Applying branding..."
echo "GH-OSINT Linux – Open Source Intelligence Toolkit for Ghana" | sudo tee /etc/motd > /dev/null

echo "===================================="
echo "  GH-OSINT setup COMPLETE"
echo "  Restart terminal to use tools"
echo "===================================="

