module "dev" {
  source                         = "../static-web-module"
  endpoint                       = "justneedadomain.xyz"
  domain_name                    = "justneedadomain.xyz"
  region                         = var.region
  bucket_name                    = "justneedadomain.xyz"
  create_domain_name_hosted_zone = false
}
