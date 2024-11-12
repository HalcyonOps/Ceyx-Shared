# Development Environment Setup Guide

This guide will help you set up your development environment for working with our infrastructure as code projects.

## Prerequisites

### Required Software

1. **Git**

   ```bash
   git --version  # Should be 2.34.0 or higher
   ```

2. **Python & pip**

   ```bash
   python --version  # Should be 3.x
   pip --version    # Should be 21.x or higher
   ```

3. **AWS CLI**

   ```bash
   # Install AWS CLI v2
   curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
   unzip awscliv2.zip
   sudo ./aws/install
   
   # Verify installation
   aws --version  # Should be 2.x or higher
   ```

4. **Terraform**

   ```bash
   # Install Terraform
   wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
   echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
   sudo apt update && sudo apt install terraform
   
   # Verify installation
   terraform --version  # Should be 1.5.x or higher
   ```

5. **terraform-docs**

   ```bash
   # Install terraform-docs
   curl -Lo ./terraform-docs.tar.gz https://github.com/terraform-docs/terraform-docs/releases/latest/download/terraform-docs-v0.16.0-$(uname)-amd64.tar.gz
   tar -xzf terraform-docs.tar.gz
   chmod +x terraform-docs
   sudo mv terraform-docs /usr/local/bin/
   
   # Verify installation
   terraform-docs --version
   ```

6. **Trivy**

   ```bash
   # Install Trivy
   sudo apt-get install wget apt-transport-https gnupg lsb-release
   wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | sudo apt-key add -
   echo deb https://aquasecurity.github.io/trivy-repo/deb $(lsb_release -sc) main | sudo tee -a /etc/apt/sources.list.d/trivy.list
   sudo apt-get update
   sudo apt-get install trivy
   
   # Verify installation
   trivy --version
   ```

## Initial Setup

1. **Clone the Repository**

   ```bash
   git clone <repository-url>
   cd <repository-name>
   ```

2. **Set Up Python Environment**

   ```bash
   # Create and activate virtual environment
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   
   # Install required packages
   pip install -r requirements.txt
   ```

3. **Configure Pre-commit Hooks**

   ```bash
   # Install pre-commit
   pip install pre-commit
   
   # Install the git hook scripts
   pre-commit install
   
   # (Optional) Run against all files
   pre-commit run --all-files
   ```

4. **Configure AWS Credentials**

   ```bash
   aws configure
   # Enter your AWS Access Key ID
   # Enter your AWS Secret Access Key
   # Enter default region (e.g., us-west-2)
   # Enter output format (json)
   ```

5. **Initialize Terraform**

   ```bash
   terraform init
   ```

## Verification Steps

Run these commands to verify your setup:

```bash
# Verify pre-commit hooks
pre-commit run --all-files

# Verify Terraform formatting
terraform fmt -check

# Verify Terraform configuration
terraform validate

# Run Checkov security checks
checkov --directory .

# Verify AWS connectivity
aws sts get-caller-identity
```

## IDE Configuration

### VS Code (Recommended)

1. **Required Extensions:**
   - HashiCorp Terraform
   - AWS Toolkit
   - Python
   - YAML
   - markdownlint
   - GitLens

2. **Recommended Settings:**

   ```json
   {
     "[terraform]": {
       "editor.formatOnSave": true,
       "editor.defaultFormatter": "hashicorp.terraform"
     },
     "[markdown]": {
       "editor.formatOnSave": true,
       "editor.defaultFormatter": "DavidAnson.vscode-markdownlint"
     },
     "[python]": {
       "editor.formatOnSave": true,
       "editor.defaultFormatter": "ms-python.python"
     }
   }
   ```

## Common Issues & Troubleshooting

1. **Pre-commit Hook Failures**

   ```bash
   pre-commit clean
   pre-commit install --clean
   ```

2. **Terraform Init Failures**

   ```bash
   rm -rf .terraform
   terraform init -upgrade
   ```

3. **AWS Credential Issues**
   - Verify credentials are correctly set in `~/.aws/credentials`
   - Check AWS CLI configuration with `aws configure list`
   - Test authentication with `aws sts get-caller-identity`

## Additional Resources

- [Project Standards](STANDARDS.md)
- [Contributing Guidelines](../CONTRIBUTING.md)
- [AWS CLI Documentation](https://aws.amazon.com/cli/)
- [Terraform Documentation](https://www.terraform.io/docs)
- [Pre-commit Documentation](https://pre-commit.com/)

## Support

If you encounter any issues not covered in this guide:

1. Check our issue tracker
2. Review the troubleshooting section
3. Contact the infrastructure team
