locals {
  web_bucket_tags = {
    Name       = "website"
    created_by = "terraform"
  }
  cf_distribution_tags = {
    Name       = "cf_distribution"
    created_by = "terraform"
  }
  cert_tags = {
    Name       = coalesce(var.domain_name, "acm_certificate")
    created_by = "terraform"
  }
  local_aliases = var.cloudfront_aliases == [] ? [] : formatlist("%s.${var.domain_name}", var.cloudfront_aliases)
  default_certs = var.use_default_domain ? ["default"] : []
  acm_certs     = var.use_default_domain ? [] : ["acm"]
  dns_zone_id   = var.create_domain_name_hosted_zone ? aws_route53_zone.primary[0].zone_id : data.aws_route53_zone.primary[0].zone_id
}
