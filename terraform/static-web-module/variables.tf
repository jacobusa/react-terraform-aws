variable "bucket_name" {
  description = "Webapp bucket name"
  type        = string
}
variable "use_default_domain" {
  default     = false
  description = "Use CloudFront website address without Route53 and ACM certificate"
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

variable "cloudfront_alias" {
  type        = string
  description = "CNAME for cloudfront alias. Point to your final domain name you want the app to be hosted. Eg. app.ribbiot.com"
}

variable "certificate_arn" {
  default     = ""
  type        = string
  description = "aws arn for the certificate issed and validated for the given aliases"
}
