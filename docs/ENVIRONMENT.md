# Environment Setup Guide

Setting up your development environment correctly is crucial for contributing effectively to **Ceyx AWS Infrastructure as Code**. This guide provides step-by-step instructions to help you get started.

## Table of Contents

1. [Prerequisites](#1-prerequisites)
2. [Clone the Repository](#2-clone-the-repository)
3. [Install Dependencies](#3-install-dependencies)
4. [Configure Pre-commit Hooks](#4-configure-pre-commit-hooks)
5. [Set Up Environment Variables](#5-set-up-environment-variables)
6. [Virtual Environment Setup](#6-virtual-environment-setup)
7. [Troubleshooting](#7-troubleshooting)
8. [Additional Resources](#8-additional-resources)

---

## **1. Prerequisites**

Ensure you have the following tools installed on your machine:

- **Git:** Version control system.
  - [Download Git](https://git-scm.com/downloads)
- **Terraform:** Infrastructure as Code tool.
  - [Download Terraform](https://www.terraform.io/downloads) (version 1.5.x or higher)
- **Go:** Programming language.
  - [Download Go](https://golang.org/dl/) (version 1.22.x or higher)
- **Python:** Programming language.
  - [Download Python](https://www.python.org/downloads/) (version 3.x)
- **pip:** Python package installer.
  - [Install pip](https://pip.pypa.io/en/stable/installation/)
- **Pre-commit:** Framework for managing and maintaining multi-language pre-commit hooks.
  - Install via pip:
    ```bash
    pip install pre-commit
    ```
- **terraform-docs:** Tool to generate documentation from Terraform modules.
  - [Install terraform-docs](https://terraform-docs.io/user-guide/installation/)
- **Checkov:** Static analysis tool for Infrastructure as Code.
  - [Install Checkov](https://www.checkov.io/installation/)
- **Trivy:** Vulnerability scanner for containers and other artifacts.
  - [Install Trivy](https://aquasecurity.github.io/trivy/latest/installation/)

## **2. Clone the Repository**

Clone the **Ceyx AWS Infrastructure as Code** repository to your local machine:

```bash
git clone https://github.com/HalcyonWorks/Ceyx-AWS.git
```

Navigate to the project directory:

```bash
cd Ceyx-AWS
```

## **3. Install Dependencies**

Ensure all necessary dependencies are installed:

- **Go Dependencies:**
  ```bash
  go mod download
  ```
- **Python Dependencies:**
  If there is a `requirements.txt` file, install the dependencies:
  ```bash
  pip install -r requirements.txt
  ```

## **4. Configure Pre-commit Hooks**

Pre-commit hooks help maintain code quality by running checks before every commit.

1. **Install Pre-commit Hooks:**
   ```bash
   pre-commit install
   ```
2. **Run All Pre-commit Hooks Manually (Optional):**
   ```bash
   pre-commit run --all-files
   ```

## **5. Set Up Environment Variables**

Configure the necessary environment variables required for the project. Refer to the `.env.example` file for required variables.

1. **Create a `.env` File:**
   ```bash
   cp .env.example .env
   ```
2. **Edit the `.env` File:**
   Open the `.env` file in your favorite text editor and populate it with the necessary values.

   ```bash
   nano .env
   ```

## **6. Virtual Environment Setup**

It's recommended to use a virtual environment to manage Python dependencies.

1. **Create a Virtual Environment:**
   ```bash
   python -m venv .venv
   ```
2. **Activate the Virtual Environment:**
   - **On macOS/Linux:**
     ```bash
     source .venv/bin/activate
     ```
   - **On Windows:**
     ```bash
     .venv\Scripts\activate
     ```
3. **Upgrade `pip`:**
   ```bash
   pip install --upgrade pip
   ```
4. **Install Python Dependencies:**
   ```bash
   pip install -r requirements.txt
   ```

## **7. Troubleshooting**

### **Pre-commit Hook Issues**

If pre-commit hooks fail:

1. **Run All Hooks Manually:**
   ```bash
   pre-commit run --all-files
   ```
2. **Address Reported Issues:**
   Follow the error messages to fix formatting or validation issues.
3. **Stage the Changes:**
   ```bash
   git add .
   ```
4. **Commit Again:**
   ```bash
   git commit -m "Fix pre-commit hook issues"
   ```

### **Version Issues**

- **Terraform Version:**
  Ensure you are using Terraform version 1.5.x or higher.
  ```bash
  terraform version
  ```

- **Go Version:**
  Ensure you are using Go version 1.22.x or higher.
  ```bash
  go version
  ```

- **terraform-docs:**
  Ensure `terraform-docs` is installed and in your PATH.
  ```bash
  which terraform-docs
  ```

- **Checkov:**
  Verify Checkov installation.
  ```bash
  checkov --version
  ```

- **Trivy:**
  Verify Trivy installation.
  ```bash
  trivy --version
  ```

## **8. Additional Resources**

- [Terraform Documentation](https://www.terraform.io/docs)
- [Pre-commit Documentation](https://pre-commit.com/)
- [Checkov Documentation](https://www.checkov.io/)

---

By following this guide, you will have a fully configured development environment ready to contribute to the **Ceyx AWS Infrastructure as Code** project. If you encounter any issues not covered in this guide, feel free to reach out through our [issue tracker](https://github.com/HalcyonWorks/Ceyx-AWS/issues) or join our [community discussions](https://github.com/HalcyonWorks/Ceyx-AWS/discussions).

---
