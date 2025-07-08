module "wrapper_acm" {
  source = "../../"

  metadata = local.metadata

  acm_parameters = {
    "${local.zone_public}" = {
      #region = "us-east-1"
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

  acm_defaults = var.acm_defaults
}