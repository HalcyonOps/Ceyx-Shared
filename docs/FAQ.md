# Frequently Asked Questions

## 1. How do I set up my development environment?

To set up your development environment, please refer to the [Environment Setup Guide](docs/ENVIRONMENT.md). This guide provides step-by-step instructions to help you install necessary tools and configure your environment for development.

## 2. How can I contribute to this project?

Contributions are welcome! Please see our [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines on how to get started, report bugs, suggest enhancements, and submit pull requests.

## 3. What coding standards should I follow?

Please adhere to the guidelines outlined in our [docs/STANDARDS.md](docs/STANDARDS.md) to maintain consistency, security, and quality across the project. This includes formatting, naming conventions, and security best practices.

## 4. How do I report a security vulnerability?

If you discover a security vulnerability in this project, please report it immediately by following the guidelines in our [SECURITY.md](SECURITY.md).

## 5. What versions of Terraform are supported?

This project requires Terraform version 1.5.x or higher. Please ensure your Terraform installation meets this requirement by running:

```bash
terraform version
```

## 6. How do I run tests?

To run tests, please refer to the [Testing](CONTRIBUTING.md#testing) section in our contributing guidelines. We utilize Terratest for comprehensive testing.

## 7. How do I format my Terraform code?

Before committing code, ensure that you run `terraform fmt` to format your code according to Terraform's standard style.

## 8. Who can I contact for help?

If you need assistance, you can reach out via our [issue tracker](https://github.com/HalcyonWorks/Ceyx-AWS/issues) or join our [community discussions](https://github.com/HalcyonWorks/Ceyx-AWS/discussions).

## 9. How do I update module documentation?

We use `terraform-docs` to generate documentation from Terraform modules. To update the documentation, navigate to the module directory and run:

```bash
terraform-docs markdown table . > README.md
```

## 10. What should I do if pre-commit hooks fail?

If pre-commit hooks fail, follow the troubleshooting steps outlined in our [Environment Setup Guide](docs/ENVIRONMENT.md#7-troubleshooting).

---
