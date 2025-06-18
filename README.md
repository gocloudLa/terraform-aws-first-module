# Terraform AWS ACM Certificate Module

[![GitHub release (latest by date)](https://img.shields.io/github/v/release/gocloudLa/terraform-aws-first-module)](https://github.com/gocloudLa/terraform-aws-first-module/releases)
[![GitHub](https://img.shields.io/github/license/gocloudLa/terraform-aws-first-module)](https://github.com/gocloudLa/terraform-aws-first-module/blob/main/LICENSE)
[![GitHub issues](https://img.shields.io/github/issues/gocloudLa/terraform-aws-first-module)](https://github.com/gocloudLa/terraform-aws-first-module/issues)
[![GitHub pull requests](https://img.shields.io/github/issues-pr/gocloudLa/terraform-aws-first-module)](https://github.com/gocloudLa/terraform-aws-first-module/pulls)

A Terraform module that simplifies the creation and management of AWS Certificate Manager (ACM) SSL certificates. This wrapper module provides an easy-to-use interface for deploying ACM certificates with Route53 DNS validation, including support for wildcard certificates and multi-region deployments.

## Features

- 🔐 **SSL Certificate Management**: Automated creation and validation of SSL certificates
- 🌐 **DNS Validation**: Automatic Route53 DNS validation records creation
- 🌟 **Wildcard Support**: Easy configuration for wildcard certificates
- 🌍 **Multi-Region**: Support for certificates in multiple AWS regions including us-east-1 for CloudFront
- 🎛️ **Flexible Configuration**: Customizable parameters with sensible defaults
- 📋 **External DNS Support**: Options for external DNS providers

## Usage

### Basic Example

```hcl
module "acm" {
  source = "github.com/gocloudLa/terraform-aws-first-module"

  metadata = {
    aws_region = "us-west-2"
    # other metadata...
  }

  acm_parameters = {
    "example.com" = {
      subject_alternative_names = [
        "*.example.com"
      ]
    }
  }

  acm_defaults = {
    validation_method = "DNS"
    wait_for_validation = true
  }
}
```

### Advanced Example with External DNS

```hcl
module "acm" {
  source = "github.com/gocloudLa/terraform-aws-first-module"

  metadata = {
    aws_region = "us-west-2"
  }

  acm_parameters = {
    "example.com" = {
      subject_alternative_names = [
        "*.example.com"
      ]
    }
    
    "external-domain.com" = {
      subject_alternative_names = [
        "*.external-domain.com"
      ]
      # For external DNS providers
      create_route53_records = false
      validate_certificate   = false
    }
  }

  acm_defaults = {
    validation_method = "DNS"
    wait_for_validation = true
    dns_ttl = 60
  }
}
```

## Examples

For complete examples, see the [examples](./example/) directory:

- [Complete Example](./example/complete/) - Full configuration with multiple certificates

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_acm"></a> [acm](#module\_acm) | terraform-aws-modules/acm/aws | 5.1.1 |
| <a name="module_acm_secondary"></a> [acm_secondary](#module\_acm\_secondary) | terraform-aws-modules/acm/aws | 5.1.1 |

## Resources

No additional resources are created directly by this module. All resources are managed by the underlying `terraform-aws-modules/acm/aws` module.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_metadata"></a> [metadata](#input\_metadata) | Metadata object containing AWS region and other configuration | `any` | n/a | yes |
| <a name="input_acm_parameters"></a> [acm\_parameters](#input\_acm\_parameters) | Map of ACM certificate configurations keyed by domain name | `any` | `{}` | no |
| <a name="input_acm_defaults"></a> [acm\_defaults](#input\_acm\_defaults) | Default values applied to all ACM certificates | `any` | `{}` | no |

### ACM Parameters Options

Each certificate in `acm_parameters` supports the following options:

| Parameter | Description | Type | Default |
|-----------|-------------|------|---------|
| `domain_name` | Primary domain name for the certificate | `string` | Key name |
| `subject_alternative_names` | List of alternative domain names | `list(string)` | `[]` |
| `validation_method` | Domain validation method (DNS or EMAIL) | `string` | `"DNS"` |
| `create_route53_records` | Whether to create Route53 validation records | `bool` | `true` |
| `validate_certificate` | Whether to validate the certificate | `bool` | `true` |
| `wait_for_validation` | Whether to wait for validation to complete | `bool` | `true` |
| `zone_id` | Route53 hosted zone ID | `string` | Auto-detected |
| `dns_ttl` | TTL for DNS validation records | `number` | `60` |
| `key_algorithm` | Certificate key algorithm | `string` | `"RSA_2048"` |

## Outputs

This module provides outputs from the underlying ACM modules. Please refer to the [terraform-aws-modules/acm/aws](https://github.com/terraform-aws-modules/terraform-aws-acm) documentation for available outputs.

## Multi-Region Support

This module automatically creates certificates in both the specified region and `us-east-1` (required for CloudFront). The `us-east-1` certificate is only created if the primary region is not already `us-east-1`.

## Contributing

We welcome contributions! Please see our [Contributing Guidelines](.github/CONTRIBUTING.md) for details.

### Development

1. Fork the repository
2. Create a feature branch: `git checkout -b feature-name`
3. Make your changes and test them
4. Submit a pull request

## Security

If you discover a security vulnerability, please see our [Security Policy](.github/SECURITY.md) for reporting instructions.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Changelog

All notable changes to this project are documented in the [CHANGELOG.md](CHANGELOG.md) file.

## Support

- 📖 [Documentation](./docs/DOCUMENTATION.md)
- 🐛 [Issues](https://github.com/gocloudLa/terraform-aws-first-module/issues)
- 💬 [Discussions](https://github.com/gocloudLa/terraform-aws-first-module/discussions)

---

Made with ❤️ by [GoCloud](https://github.com/gocloudLa)
