---
name: Bug report
about: Create a report to help us improve
title: '[BUG] '
labels: 'bug'
assignees: ''

---

## Bug Description
A clear and concise description of what the bug is.

## Expected Behavior
A clear and concise description of what you expected to happen.

## Actual Behavior
A clear and concise description of what actually happened.

## Steps to Reproduce
Steps to reproduce the behavior:
1. Go to '...'
2. Click on '....'
3. Scroll down to '....'
4. See error

## Terraform Configuration
```hcl
# Please provide your Terraform configuration that reproduces the issue
module "acm" {
  source = "github.com/gocloudLa/terraform-aws-first-module"
  
  # Your configuration here
}
```

## Environment Information
- **Terraform Version**: [e.g. 1.6.0]
- **Provider Version**: [e.g. AWS provider 5.0.0]
- **Operating System**: [e.g. Ubuntu 20.04, macOS 13.0]
- **Module Version**: [e.g. v1.2.0]

## Error Output
```
# Please paste any error messages or logs here
```

## Additional Context
Add any other context about the problem here, such as:
- Screenshots (if applicable)
- Related issues
- Workarounds you've tried 