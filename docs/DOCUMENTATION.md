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

    "example.com" = {
      subject_alternative_names = [
        "*.example.com"
      ]
      # EXTERNAL DNS SERVER
      create_route53_records = false
    }
  }

  acm_defaults = var.acm_defaults
```
<details>
<summary>Tabla de Variables</summary>

| Variable       | Variable Description                        | Type  | Default | Alternatives |
|----------------|---------------------------------------------|-------|---------|--------------|
| acm_parameters | Acm parameteres to configure acm module     | `any` | `{}`    |              |
| acm_defaults   | Acm parameteres to configure acm module     | `any` | `{}`    |              |

</details>

---

