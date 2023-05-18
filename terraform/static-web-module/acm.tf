
# resource "aws_acm_certificate" "cert" {
#   provider                  = aws.us-east-1
#   domain_name               = var.domain_name
#   subject_alternative_names = ["*.${var.domain_name}"]
#   tags                      = local.cert_tags
#   validation_method         = "DNS"
# }


# resource "aws_acm_certificate_validation" "certvalidation" {
#   provider                = aws.us-east-1
#   certificate_arn         = aws_acm_certificate.cert.arn
#   validation_record_fqdns = [for r in aws_route53_record.cert_validation : r.fqdn]
# }
