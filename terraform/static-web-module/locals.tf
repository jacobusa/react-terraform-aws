locals {
  web_bucket_tags = {
    Name       = "website"
    created_by = "terraform"
  }
  cf_distribution_tags = {
    Name       = "cf_distribution"
    created_by = "terraform"
  }
  cert_tags = {
    Name       = coalesce(var.domain_name, "acm_certificate")
    created_by = "terraform"
  }
}
