# Contributing to Terraform AWS ACM Module

We love your input! We want to make contributing to this project as easy and transparent as possible, whether it's:

- Reporting a bug
- Discussing the current state of the code
- Submitting a fix
- Proposing new features
- Becoming a maintainer

## Development Process

We use GitHub to host code, to track issues and feature requests, as well as accept pull requests.

## Pull Requests

Pull requests are the best way to propose changes to the codebase. We actively welcome your pull requests:

1. Fork the repo and create your branch from `main`.
2. If you've added code that should be tested, add tests.
3. If you've changed APIs, update the documentation.
4. Ensure the test suite passes.
5. Make sure your code lints.
6. Issue that pull request!

## Local Development

### Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) >= 1.0
- [tflint](https://github.com/terraform-linters/tflint)
- [terraform-docs](https://terraform-docs.io/) (optional, for documentation generation)

### Setup

1. Clone your fork of the repository:
   ```bash
   git clone https://github.com/YOUR_USERNAME/terraform-aws-first-module.git
   cd terraform-aws-first-module
   ```

2. Create a new branch for your feature or fix:
   ```bash
   git checkout -b feature/your-feature-name
   ```

### Code Style

- Use consistent formatting: `terraform fmt -recursive`
- Validate your code: `terraform validate`
- Lint your code: `tflint`
- Follow [Terraform best practices](https://www.terraform.io/docs/extend/best-practices/index.html)

### Testing

Before submitting a pull request, make sure to:

1. Format your code:
   ```bash
   terraform fmt -recursive
   ```

2. Validate the configuration:
   ```bash
   terraform init
   terraform validate
   ```

3. Run tflint:
   ```bash
   tflint --init
   tflint
   ```

### Documentation

- Update the README.md if you change functionality
- Add comments to complex logic
- Update variable descriptions in variables.tf
- Use terraform-docs to generate documentation if needed

## Issue Reporting

We use GitHub issues to track public bugs. Report a bug by [opening a new issue](https://github.com/gocloudLa/terraform-aws-first-module/issues/new/choose).

**Great Bug Reports** tend to have:

- A quick summary and/or background
- Steps to reproduce
  - Be specific!
  - Give sample configuration if possible
- What you expected would happen
- What actually happens
- Notes (possibly including why you think this might be happening, or stuff you tried that didn't work)

## Feature Requests

We welcome feature requests! Please provide:

- A clear description of the feature
- The use case and why it would be beneficial
- Example configuration showing how it would work
- Any alternative solutions you've considered

## License

By contributing, you agree that your contributions will be licensed under its MIT License.

## References

This document was adapted from the open-source contribution guidelines for [Facebook's Draft](https://github.com/facebook/draft-js/blob/a9316a723f9e918afde44dea68b5f9f39b7d9b00/CONTRIBUTING.md) 