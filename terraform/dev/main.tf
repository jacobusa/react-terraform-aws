module "dev" {
  source           = "../static-web-module"
  cert_domain_name = "dev.moduledev.xyz"
  cloudfront_alias = "dev.moduledev.xyz"
  certificate_arn  = "arn:aws:acm:us-east-1:176709227108:certificate/9f3e89d8-f249-4899-a57b-ad4d27e303da"
  region           = var.region
  bucket_name      = "sample-vite-terraform-aws"
}