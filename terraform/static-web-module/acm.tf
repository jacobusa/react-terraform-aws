
resource "aws_acm_certificate" "cert" {
  # count                     = var.use_default_domain ? 0 : 1
  provider                  = aws.us-east-1
  domain_name               = var.domain_name
  subject_alternative_names = ["*.${var.domain_name}"]
  tags                      = local.cert_tags
  validation_method         = "DNS"
  lifecycle {
    create_before_destroy = true
  }
}

# You don’t actually have to wait for the validation to process, unless your Terraform plan is going to do something like add a CloudFront distribution that uses your new certificate and expects it to be valid. To wait for the certificate to be successfully issued, use the aws_acm_certificate_validation resource. 
resource "aws_acm_certificate_validation" "cert_validation" {
  count                   = var.use_default_domain ? 0 : 1
  provider                = aws.us-east-1
  certificate_arn         = aws_acm_certificate.cert.arn
  validation_record_fqdns = [for r in aws_route53_record.cert_validation : r.fqdn]
}
