module "dev" {
  source             = "../static-web-module"
  domain_name        = "moduledev.xyz"
  cert_domain_name   = "*.moduledev.xyz"
  cloudfront_aliases = ["dev", "test"]
  certificate_arn    = "arn:aws:acm:us-east-1:176709227108:certificate/fd1d7a96-72e7-42de-9f2d-7616eaaa9268"
  use_default_domain = false
  region             = var.region
  bucket_name        = "sample-vite-terraform-aws"
}
