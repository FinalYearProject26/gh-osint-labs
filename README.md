# GH-OSINT Labs

GH-OSINT Labs is an Ubuntu-based Open Source Intelligence (OSINT) lab
environment designed for cybersecurity research, training, and
investigations within the Ghanaian context.

The project focuses on building a **localized, reproducible OSINT
workspace** that addresses gaps in generic OSINT platforms when applied
to Ghana and similar West African environments.

------------------------------------------------------------------------

## Project Objectives

-   Provide a ready-to-use OSINT lab based on Ubuntu
-   Automate OSINT tool deployment using Bash scripting
-   Apply best practices in dependency isolation and system security
-   Lay the foundation for Ghana-specific OSINT assets and workflows
-   Support cybersecurity education, research, and defensive
    investigations

------------------------------------------------------------------------

## Current Project Status

### Phase One: Core OSINT Lab Setup --- COMPLETED ✅

Phase One focused on creating a stable and reproducible OSINT
environment.

Completed deliverables: - Ubuntu-based OSINT lab environment - Automated
installation via Bash script - Python virtual environment isolation -
Source-based installation of OSINT tools - Initial system branding

### Phase Two: Ghana-Specific OSINT Localization --- IN PROGRESS 🚧

Planned additions: - Ghanaian OSINT wordlists (names, institutions,
locations) - Local data source bookmarks - Context-aware OSINT
workflows - Additional OSINT tooling - Usability improvements and
documentation

------------------------------------------------------------------------

## Features (Phase One)

-   Automated OSINT lab deployment
-   Secure Python virtual environment (`venv`)
-   Source-based installation to avoid broken package repositories
-   Core OSINT and reconnaissance tools:
    -   theHarvester
    -   recon-ng
    -   nmap
    -   whois
    -   ExifTool
-   Custom system message branding

------------------------------------------------------------------------

## Repository Structure

    gh-osint-labs/
    ├── scripts/
    ├── assets/
    │   ├── wordlists/
    │   └── bookmarks/
    ├── docs/
    ├── screenshots/
    └── README.md

------------------------------------------------------------------------

## Installation (Phase One)

### System Requirements

-   Ubuntu 22.04 LTS or Ubuntu 24.04 LTS
-   Internet connection
-   Minimum 8 GB RAM recommended

### Setup Instructions

Clone the repository:

    git clone https://github.com/FinalYearProject26/gh-osint-labs.git
    cd gh-osint-labs

Make the installer executable:

    chmod +x scripts/install.sh

Run the installation script:

    ./scripts/install.sh

After installation completes: - Close the terminal - Open a new terminal
session

------------------------------------------------------------------------

## Usage

    theHarvester -h

    recon-ng

------------------------------------------------------------------------

## Security & Best Practices

-   OSINT tools run as a non-root user
-   Python dependencies are isolated using `venv`
-   System Python is not modified
-   Source-based installations ensure tool integrity

------------------------------------------------------------------------

## Intended Use

This project is intended for: - Cybersecurity education and training -
Defensive security research - Open-source intelligence investigations -
Academic and ethical OSINT practice

------------------------------------------------------------------------

## Disclaimer

This project is developed strictly for educational and defensive
purposes.

Users are responsible for ensuring compliance with: - Ghanaian laws -
Institutional policies - Ethical OSINT guidelines

The author does not condone unauthorized access, surveillance, or misuse
of information.

------------------------------------------------------------------------

## Author

Final Year Project\
BSc Information Technology\
Cybersecurity Focus

------------------------------------------------------------------------

## License

This project will adopt an open-source license upon completion.
