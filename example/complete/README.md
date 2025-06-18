# Complete ACM Example

This example demonstrates how to use the Terraform AWS ACM module to create SSL certificates with various configurations.

## Features Demonstrated

- Creating a certificate with wildcard subdomain support
- External DNS configuration (for domains not managed in Route53)
- Multi-region certificate creation (including us-east-1 for CloudFront)

## Usage

1. Update the `locals.tf` file with your domain configuration
2. Update the `variables.tf` file if needed
3. Run the following commands:

```bash
terraform init
terraform plan
terraform apply
```

## Configuration

The example creates certificates for:

1. **Main Domain**: Uses the domain specified in `local.zone_public`
   - Includes wildcard certificate (`*.example.com`)
   - Automatically validates using Route53

2. **External Domain**: `gcl-example.com`
   - Includes wildcard certificate (`*.gcl-example.com`)
   - Configured for external DNS validation
   - Certificate validation is disabled (manual validation required)

## Prerequisites

- AWS Account with appropriate permissions
- Route53 hosted zone for the main domain (if using automatic validation)
- Terraform >= 1.0
- AWS Provider >= 5.0

## Outputs

The example outputs all certificate ARNs and validation information for both the primary region and us-east-1.

## Clean Up

To destroy the resources:

```bash
terraform destroy
```

**Note**: Make sure no resources are depending on these certificates before destroying them. 