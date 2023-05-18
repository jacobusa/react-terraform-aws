module "dev" {
  source = "../static-web-module"
  # endpoint                       = "justneedadomain.xyz"
  # domain_name                    = "justneedadomain.xyz"
  region      = var.region
  bucket_name = "sample-vite-terraform-aws"
}
