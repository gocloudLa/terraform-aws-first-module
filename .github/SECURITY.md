# Security Policy

## Supported Versions

We release patches for security vulnerabilities. Which versions are eligible for receiving such patches depends on the CVSS v3.0 Rating:

| Version | Supported          |
| ------- | ------------------ |
| 1.2.x   | :white_check_mark: |
| 1.1.x   | :white_check_mark: |
| 1.0.x   | :x:                |
| < 1.0   | :x:                |

## Reporting a Vulnerability

The GoCloud team and community take security bugs seriously. We appreciate your efforts to responsibly disclose your findings, and will make every effort to acknowledge your contributions.

To report a security issue, please use the GitHub Security Advisory ["Report a Vulnerability"](https://github.com/gocloudLa/terraform-aws-first-module/security/advisories/new) tab.

The GoCloud team will send a response indicating the next steps in handling your report. After the initial reply to your report, the security team will keep you informed of the progress towards a fix and full announcement, and may ask for additional information or guidance.

### What to Include

Please include the requested information listed below (as much as you can provide) to help us better understand the nature and scope of the possible issue:

* Type of issue (e.g. buffer overflow, SQL injection, cross-site scripting, etc.)
* Full paths of source file(s) related to the manifestation of the issue
* The location of the affected source code (tag/branch/commit or direct URL)
* Any special configuration required to reproduce the issue
* Step-by-step instructions to reproduce the issue
* Proof-of-concept or exploit code (if possible)
* Impact of the issue, including how an attacker might exploit the issue

This information will help us triage your report more quickly.

## Preferred Languages

We prefer all communications to be in English.

## Security Best Practices

When using this module, consider the following security best practices:

### Terraform State Security
- Store Terraform state in a secure backend (S3 with encryption, Terraform Cloud, etc.)
- Enable state locking to prevent concurrent modifications
- Limit access to state files using IAM policies

### AWS Credentials
- Use IAM roles instead of access keys when possible
- Follow the principle of least privilege
- Regularly rotate access keys
- Use AWS IAM Identity Center (successor to AWS SSO) for human access

### Certificate Management
- Regularly monitor certificate expiration dates
- Use automated certificate renewal when possible
- Implement proper certificate validation
- Consider using shorter certificate lifespans

### Infrastructure as Code
- Keep your Terraform modules up to date
- Use version pinning for dependencies
- Review all changes through pull requests
- Implement automated security scanning in your CI/CD pipeline

## Disclosure Policy

When the security team receives a security bug report, they will assign it to a primary handler. This person will coordinate the fix and release process, involving the following steps:

* Confirm the problem and determine the affected versions.
* Audit code to find any potential similar problems.
* Prepare fixes for all releases still under maintenance.
* Release new versions of all affected components.

## Comments on this Policy

If you have suggestions on how this process could be improved please submit a pull request. 