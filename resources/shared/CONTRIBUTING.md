# Contributing to Ceyx AWS Infrastructure as Code

Thank you for your interest in contributing to **Ceyx**! By participating in this project, you help enhance our AWS infrastructure management capabilities using Terraform. Whether you're fixing bugs, improving documentation, or suggesting new features, your contributions are highly valued.

## Table of Contents

1. [How to Contribute](#how-to-contribute)
   - [Reporting Bugs](#reporting-bugs)
   - [Suggesting Enhancements](#suggesting-enhancements)
   - [Forking and Branching](#forking-and-branching)
   - [Making Changes](#making-changes)
   - [Submitting Pull Requests](#submitting-pull-requests)
2. [Code of Conduct](#code-of-conduct)
3. [Development Setup](#development-setup)
4. [Coding Standards](#coding-standards)
5. [Testing](#testing)
6. [Documentation](#documentation)
7. [License](#license)
8. [Acknowledgements](#acknowledgements)

---

## How to Contribute

### Reporting Bugs

If you encounter a bug in Ceyx, please help us improve by [opening an issue](https://github.com/HalcyonWorks/Ceyx-AWS/issues). When reporting a bug, please include the following information:

- **Description:** A clear and concise description of what the bug is.
- **Steps to Reproduce:** Detailed steps to reproduce the issue.
- **Expected Behavior:** What you expected to happen.
- **Actual Behavior:** What actually happened.
- **Environment:** Details about your environment (e.g., Terraform version, AWS region).

### Suggesting Enhancements

We welcome suggestions for improvements and new features. To propose an enhancement, please [open an issue](https://github.com/HalcyonWorks/Ceyx-AWS/issues) with the following details:

- **Description:** A clear and concise description of the enhancement.
- **Use Case:** Explain how this feature would benefit the project.
- **Additional Context:** Any other relevant information or screenshots.

### Forking and Branching

1. **Fork the Repository:** Click the "Fork" button at the top-right corner of the repository page to create your own fork.
2. **Clone Your Fork:**

   ```bash
   git clone https://github.com/your-username/Ceyx-AWS.git
   ```

3. **Create a New Branch:**

   ```bash
   git checkout -b feature/your-feature-name
   ```

### Making Changes

- **Follow Coding Standards:** Ensure your code adheres to the guidelines in [STANDARDS.md](STANDARDS.md).
- **Security-First Approach:** Implement secure configurations and validate them against security best practices.
- **Modularity:** Strive for reusable and maintainable modules.
- **Documentation:** Update or add documentation as necessary to reflect your changes.

### Submitting Pull Requests

1. **Commit Your Changes:**

   ```bash
   git commit -m "feat: add new feature X"
   ```

2. **Push to Your Fork:**

   ```bash
   git push origin feature/your-feature-name
   ```

3. **Open a Pull Request:** Navigate to the original repository and click "Compare & pull request". Provide a clear description of your changes and reference any related issues.

**Before submitting a PR:**

- Run `terraform fmt` to format your code.
- Run `terraform validate` to ensure your configurations are syntax-error free.
- Execute `terraform-docs` to update module documentation if applicable.
- Ensure all pre-commit hooks pass by running:

  ```bash
  pre-commit run --all-files
  ```

## Code of Conduct

This project adheres to the [Code of Conduct](CODE_OF_CONDUCT.md). By contributing, you agree to abide by its terms. Please report any unacceptable behavior to the maintainers.

## Development Setup

To set up your development environment, follow these steps:

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/HalcyonWorks/Ceyx-AWS.git
   ```

2. **Install Prerequisites:**
   Ensure you have the following tools installed:
   - [Terraform](https://www.terraform.io/downloads) (version 1.5.x or higher)
   - [Go](https://golang.org/dl/) (version 1.22.x or higher)
   - [Python](https://www.python.org/downloads/) (version 3.x)
   - [pip](https://pip.pypa.io/en/stable/installation/)
   - [Pre-commit](https://pre-commit.com/) (installed via `pip`)
   - [terraform-docs](https://terraform-docs.io/)
   - [Checkov](https://www.checkov.io/)
   - [Trivy](https://aquasecurity.github.io/trivy/)
3. **Configure Pre-commit Hooks:**

   ```bash
   pre-commit install
   ```

4. **Set Up Environment Variables:**
   Follow the [Environment Setup Guide](ENVIRONMENT.md) to configure necessary environment variables and tools.

## Coding Standards

Adhere to the guidelines outlined in [STANDARDS.md](STANDARDS.md) to maintain consistency, security, and quality across the project.

### Best Practices

- **Modularity:** Create reusable and maintainable Terraform modules.
- **Security:** Implement secure defaults and adhere to security best practices.
- **Consistency:** Follow consistent naming conventions and coding styles.
- **Documentation:** Ensure all modules and configurations are well-documented.

### Voice and Style

- **Clarity:** Write clear and concise sentences. Avoid unnecessary complexity.
- **Active Voice:** Use active voice to make your writing more direct and lively.
- **Second Person:** Address the reader as "you" to make instructions more personal.
- **Avoid Subjectivity:** Steer clear of subjective terms like "easy" or "quick".

For more detailed guidelines, refer to the [Style Guide](STANDARDS.md#2.2.3 Documentation).

## Testing

Ensure all contributions are thoroughly tested before submission.

1. **Static Code Analysis:**

   ```bash
   terraform fmt
   terraform validate
   tflint
   ```

2. **Automated Testing:**
   - Utilize Terratest for comprehensive testing.
3. **Run Pre-commit Hooks:**

   ```bash
   pre-commit run --all-files
   ```

Refer to the [Testing and Validation](STANDARDS.md#2.2.4 Testing and Validation) section in `STANDARDS.md` for more details.

## Documentation

Maintain and improve documentation to ensure clarity and comprehensiveness.

- **Module Documentation:** Each Terraform module contains a `README.md` with usage instructions and examples.
- **Automated Documentation Generation:**

  ```bash
  terraform-docs markdown table . > README.md
  ```

- **Environment Setup Guide:** Ensure the [Environment Setup Guide](ENVIRONMENT.md) is up-to-date.

Follow the [Documentation Standards](STANDARDS.md#2.2.3 Documentation) to ensure consistency and quality.

## License

By contributing, you agree that your contributions will be licensed under the [Apache License 2.0](LICENSE).

## Acknowledgements

Special thanks to all contributors and the community for their valuable input and support. Your efforts help make Ceyx a robust and secure solution for managing AWS infrastructure.

---

For any questions or further assistance, feel free to reach out through our [issue tracker](https://github.com/HalcyonWorks/Ceyx-AWS/issues) or join our [community discussions](https://github.com/HalcyonWorks/Ceyx-AWS/discussions).
