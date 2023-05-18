
data "aws_route53_zone" "domain" {
  name = var.domain_name
}

///////////////////////////////////
// OPTIONAL: Use this block of code if you want to toggle whether terraform should create a new hosted zone or use an aready created one passed through the var=domain_name
///////////////////////////////////
# resource "aws_route53_zone" "primary" {
#   count = var.create_domain_name_hosted_zone ? 1 : 0
#   name  = var.domain_name
# }
# data "aws_route53_zone" "primary" {
#   count = var.create_domain_name_hosted_zone ? 0 : 1
#   name  = var.domain_name
# }
# locals {
#   dns_zone_id = var.create_domain_name_hosted_zone ? aws_route53_zone.primary[0].zone_id : data.aws_route53_zone.primary[0].zone_id
# }


resource "aws_route53_record" "cert_validation" {
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
  zone_id         = data.aws_route53_zone.domain.zone_id
}

resource "aws_route53_record" "web_url" {
  name    = var.endpoint
  zone_id = data.aws_route53_zone.domain.zone_id
  type    = "A"
  alias {
    name                   = aws_cloudfront_distribution.cf_distribution.domain_name
    zone_id                = aws_cloudfront_distribution.cf_distribution.hosted_zone_id
    evaluate_target_health = true
  }
}
