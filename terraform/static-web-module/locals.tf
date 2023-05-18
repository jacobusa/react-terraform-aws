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
    created_by = "terraform"
  }
}
