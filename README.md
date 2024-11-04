# Ceyx-Shared Infrastructure Repository

## Overview

**Ceyx-Shared** is the centralized Infrastructure as Code (IaC) repository for managing and synchronizing AWS resources across all Ceyx projects. Utilizing Terraform and GitHub Actions, this repository ensures consistent, secure, and efficient deployment of infrastructure components within the organization.

## How It Works

- **Resource Synchronization:** Automatically syncs shared resources to designated module repositories.
- **CI/CD Integration:** Leverages GitHub Actions to automate the synchronization workflow.
- **Security-First:** Adheres to strict security standards as outlined in `STANDARDS.md`.

## Disclaimer

**Ceyx-Shared** is intended for internal use within the Ceyx organization only. It is not designed for external use and should be used solely for synchronizing resources across Ceyx project repositories.

## License

This project is licensed under the [Apache License 2.0](./LICENSE).

