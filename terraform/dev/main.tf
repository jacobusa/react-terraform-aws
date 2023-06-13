module "dev" {
  source             = "../static-web-module"
  domain_name        = "justneedadomain.xyz"
  cloudfront_aliases = "dev.justneedadomain.xyz"
  use_default_domain = true
  region             = var.region
  bucket_name        = "sample-vite-terraform-aws"
}
