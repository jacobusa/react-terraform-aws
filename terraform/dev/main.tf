module "dev" {
  source           = "../static-web-module"
  cert_domain_name = "*.moduledev.xyz"
  cloudfront_alias = "dev.moduledev.xyz"
  certificate_arn  = "arn:aws:acm:us-east-1:176709227108:certificate/fd1d7a96-72e7-42de-9f2d-7616eaaa9268"
  region           = var.region
  bucket_name      = "sample-vite-terraform-aws"
}
