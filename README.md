# GH-OSINT Labs

GH-OSINT Labs is an Ubuntu-based Open Source Intelligence (OSINT) lab environment
designed for cybersecurity research, training, and investigations within the
Ghanaian context.

The project focuses on building a **localized, reproducible OSINT workspace**
that addresses gaps in generic OSINT platforms when applied to Ghana and similar
West African environments.

---

## Project Objectives

- Provide a ready-to-use OSINT lab based on Ubuntu
- Automate OSINT tool deployment using Bash scripting
- Apply best practices in dependency isolation and system security
- Lay the foundation for Ghana-specific OSINT assets and workflows
- Support cybersecurity education, research, and defensive investigations

---

## Current Project Status

**Phase One: Core OSINT Lab Setup — COMPLETED ✅**

Phase One focused on creating a stable and reproducible OSINT environment.

Completed deliverables:
- Ubuntu-based OSINT lab environment
- Automated installation via Bash script
- Python virtual environment isolation
- Source-based installation of OSINT tools
- Initial system branding

**Phase Two: Ghana-Specific OSINT Localization — IN PROGRESS 🚧**

Planned additions:
- Ghanaian OSINT wordlists (names, institutions, locations)
- Local data source bookmarks
- Context-aware OSINT workflows
- Additional OSINT tooling
- Usability improvements and documentation

---

## Features (Phase One)

- Automated OSINT lab deployment
- Secure Python virtual environment (`venv`)
- Source-based installation to avoid broken package repositories
- Core OSINT and reconnaissance tools:
  - theHarvester
  - recon-ng
  - nmap
  - whois
  - ExifTool
- Custom system message branding

---

## Repository Structure
gh-osint-labs/
├── scripts/ # Installation and automation scripts
├── assets/ # Ghana-specific OSINT resources
│ ├── wordlists/
│ └── bookmarks/
├── docs/ # Project documentation
├── screenshots/ # Evidence and reporting screenshots
└── README.md

---

## Installation (Phase One)

### System Requirements
- Ubuntu 22.04 LTS or Ubuntu 24.04 LTS
- Internet connection
- Minimum 8 GB RAM recommended

### Setup Instructions

Clone the repository:

'''
git clone https://github.com/FinalYearProject26/gh-osint-labs.git
cd gh-osint-labs
'''
Make the installer executable:
'''
chmod +x scripts/install.sh
'''
