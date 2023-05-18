variable "bucket_name" {
  description = "Webapp bucket name"
  type        = string
}

variable "endpoint" {
  description = "Endpoint"
  type        = string
}

variable "region" {
  description = "AWS Region"
  type        = string
}

variable "domain_name" {
  description = "Web host domain"
  type        = string
}
variable "create_domain_name_hosted_zone" {
  description = "true if you wish to create this domain within route53. false if you already have a hosted_zone configured with the domain name"
  type        = bool
}

variable "price_class" {
  description = "CloudFront distribution price class"
  default     = "PriceClass_100"
  type        = string
}
