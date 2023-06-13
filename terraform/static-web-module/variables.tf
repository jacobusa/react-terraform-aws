variable "bucket_name" {
  description = "Webapp bucket name"
  type        = string
}
variable "use_default_domain" {
  default     = false
  description = "Use CloudFront website address without Route53 and ACM certificate"
}

variable "create_domain_name_hosted_zone" {
  default     = true
  description = "If true, terraform will create a new hosted zone using the domain_name. If false, it will just pull the data from the existing hosted_zone if any"
}
variable "domain_name" {
  description = "Domain name to set for applications"
  type        = string
}
variable "cert_domain_name" {
  description = "Domain name to set for applications"
  type        = string
}

variable "region" {
  description = "AWS Region"
  type        = string
}
variable "price_class" {
  description = "CloudFront distribution price class"
  default     = "PriceClass_100"
  type        = string
}

variable "cloudfront_aliases" {
  default     = []
  description = "Extra CNAMEs (alternate domain names), if any, for this distribution. Eg. ['dev'] for dev.domain.com"
}

variable "certificate_arn" {
  default     = ""
  type        = string
  description = "aws arn for the certificate issed and validated for the given aliases"
}
