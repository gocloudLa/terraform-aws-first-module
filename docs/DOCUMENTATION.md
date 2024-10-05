# Documentation

## Introducción

El Wrapper de Terraform para ACM simplifica la configuración del Servicio de Certificados SSL en la nube de AWS. Este wrapper funciona como una plantilla predefinida, facilitando la creación y gestión de ACM al encargarse de todos los detalles técnicos.

**Diagrama** <br/>
A continuación se puede ver una imagen que muestra la totalidad de recursos que se pueden desplegar con el wrapper:

<center>![alt text](diagrams/main.png)</center>

---

## Modo de Uso
```hcl
  acm_parameters = {
    "${local.zone_public}" = {
      subject_alternative_names = [
        "*.${local.zone_public}"
      ]
    }

      "gcl-example.com" = {
      subject_alternative_names = [
        "*.gcl-example.com"
      ]
      # EXTERNAL DNS SERVER
      create_route53_records = false
      validate_certificate   = false
    }
  }
  }

  acm_defaults = var.acm_defaults
```
<details>
<summary>Tabla de Variables</summary>

| Variable                                    | Variable Description                                                      | Type      | Default    | Alternatives                    |
|---------------------------------------------|---------------------------------------------------------------------------|-----------|------------|---------------------------------|
| create_certificate                          | Determines if a new certificate should be created.                        | `bool`    | true       | false                           |
| create_route53_records_only                 | Specifies if only Route53 records should be created without a certificate.| `bool`    | false      | true                            |
| validate_certificate                        | Enables validation for the created certificate.                           | `bool`    | true       | false                           |
| validation_allow_overwrite_records          | Allows overwriting existing DNS records during validation.                | `bool`    | true       | false                           |
| wait_for_validation                         | Waits for the certificate validation to complete.                         | `bool`    | true       | false                           |
| certificate_transparency_logging_preference | Enables or disables certificate transparency logging.                     | `bool`    | true       | false                           |
| domain_name                                 | The primary domain name for the certificate.                              | `string`  | each.key   | Any valid domain name           |
| subject_alternative_names                   | A list of alternative domain names for the certificate.                   | `list`    | []         | List of additional domain names |
| validation_method                           | The method used for domain validation (DNS or EMAIL).                     | `string`  | "DNS"      | "EMAIL"                         |
| validation_option                           | Custom options for validation.                                            | `map `    | {}         | Map of validation settings      |
| create_route53_records                      | Whether to create Route53 records for the certificate.                    | `bool`    | true       | false                           |
| validation_record_fqdns                     | List of fully qualified domain names (FQDNs) for validation records.      | `list`    | []         | List of FQDNs                   |
| zone_id                                     | Route53 hosted zone ID for domain validation.                             | `string`  | null       | Specific hosted zone ID         |
| dns_ttl                                     | Time-to-live (TTL) for DNS validation records.                            | `number`  | 60         | Any valid TTL value             |
| acm_certificate_domain_validation_options   | ACM certificate domain validation options.                                | `map `    | {}         | Map of validation options       |
| distinct_domain_names                       | List of distinct domain names for the certificate.                        | `list`    | []         | List of unique domain names     |
| validation_timeout                          | Timeout period for certificate validation in seconds.                     | `number`  | null       | Any valid timeout value         |
| key_algorithm                               | The cryptographic key algorithm for the certificate.                      | `string`  | "RSA_2048" | "RSA_4096", "EC_prime256v1"     |
| putin_khuylo                                | Custom placeholder variable.                                              | `bool`    | true       | false                           |

</details>

---

