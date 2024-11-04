# Security Policy

## Supported Versions

We currently support the following versions:

| Version | Supported          |
| ------- | ------------------ |
| 0.1.x   | :white_check_mark: |
| < 0.1.0 | :x:                |

## Reporting a Vulnerability

If you discover a security vulnerability in **Ceyx AWS Infrastructure as Code**, please report it immediately by creating a private issue or contacting the maintainers directly at [maintainer@example.com](mailto:maintainer@example.com). All security vulnerabilities will be promptly addressed.

### Do Not

- **Do not** publicly disclose the vulnerability before it has been addressed.
- **Do not** modify or delete any existing public issue or discussion related to the vulnerability.

### Required Information

When reporting a vulnerability, please include the following:

- **Description:** A clear and concise description of the vulnerability.
- **Impact:** Explain the potential impact of the vulnerability.
- **Steps to Reproduce:** Detailed steps to reproduce the issue.
- **Environment:** Information about your environment (e.g., Terraform version, AWS region).

## Response Process

1. **Acknowledgment:** We will acknowledge your report within 24 hours.
2. **Assessment:** Our team will assess the severity and impact of the vulnerability.
3. **Resolution:** We will work on a fix or mitigation strategy.
4. **Communication:** We will inform you once the issue is resolved.

## Additional Security Practices

- **Data Encryption:** Ensure all sensitive data is encrypted both in transit and at rest using AWS-managed keys or customer-managed keys.
- **Access Control:** Implement the principle of least privilege for all IAM roles and policies.
- **Regular Audits:** Conduct regular security audits and compliance checks to identify and remediate potential vulnerabilities.
- **Dependency Management:** Regularly update dependencies to mitigate known vulnerabilities and ensure compatibility.
- **Monitoring and Logging:** Enable AWS CloudTrail and AWS Config for auditing and integrate with AWS Security Hub for centralized security management.

## References

- [AWS Security Best Practices](https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards-cis.html)
- [Conventional Commits Specification](https://www.conventionalcommits.org/en/v1.0.0/)
- [Terraform Security Best Practices](https://www.terraform.io/docs/cloud/security.html)

### **Security Scanning Workflow**

To ensure the security of our infrastructure, we have integrated automated security scanning into our CI/CD pipeline using Checkov and Trivy. These scans are configured in the `security-scan.yml` workflow.

- **Checkov:** Performs static analysis of Terraform code to detect security and compliance issues.
- **Trivy:** Scans container images for vulnerabilities.

#### **Using the Security Scan Workflow**

Ensure that you have the necessary secrets configured in your GitHub repository for running these scans.

*Reference:* [Terraform Security Best Practices](https://www.terraform.io/docs/cloud/security.html)
