resource "aws_route53_zone" "primary" {
  count = var.create_domain_name_hosted_zone ? 1 : 0
  name  = var.domain_name
}
data "aws_route53_zone" "primary" {
  count = var.create_domain_name_hosted_zone ? 0 : 1
  name  = var.domain_name
}
locals {
  dns_zone_id = var.create_domain_name_hosted_zone ? aws_route53_zone.primary[0].zone_id : data.aws_route53_zone.primary[0].zone_id
}

resource "aws_route53_record" "cert_validation" {
  count = var.use_default_domain ? 0 : 1
  for_each = {
    for d in aws_acm_certificate.cert.domain_validation_options : d.domain_name => {
      name   = d.resource_record_name
      record = d.resource_record_value
      type   = d.resource_record_type
    }
  }

  allow_overwrite = true
  name            = each.value.name
  records         = [each.value.record]
  ttl             = 60
  type            = each.value.type
  zone_id         = local.dns_zone_id
}

resource "aws_route53_record" "web_url" {
  count   = var.use_default_domain ? 0 : 1
  name    = var.domain_name
  zone_id = local.dns_zone_id
  type    = "A"
  alias {
    name                   = aws_cloudfront_distribution.cf_distribution.domain_name
    zone_id                = "Z2FDTNDATAQYW2" # This is always the hosted zone ID when you create an alias record that routes traffic to a CloudFront distribution.
    evaluate_target_health = true
  }
}
