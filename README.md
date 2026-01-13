# GH-OSINT Labs

GH-OSINT Labs is an Ubuntu-based Open Source Intelligence (OSINT) lab environment
designed for cybersecurity research, training, and investigations within the
Ghanaian context.

## Project Focus
This project aims to localize OSINT tooling by:
- Providing a pre-configured OSINT environment
- Integrating widely used OSINT tools
- Laying the foundation for Ghana-specific data sources and workflows

## Current Features (Phase One)
- Ubuntu-based OSINT lab setup
- Automated installation via Bash script
- Python virtual environment isolation
- Source-based installation of OSINT tools
- Core tools:
  - theHarvester
  - recon-ng
  - nmap
  - whois
  - ExifTool

## Installation (Phase One)
Tested on Ubuntu 22.04+ / 24.04

```bash
git clone https://github.com/FinalYearProject26/gh-osint-labs.git
cd gh-osint-labs
chmod +x scripts/install.sh
./scripts/install.sh

