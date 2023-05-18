provider "aws" {
  region = var.region
}

# Certs can only be issued in us-east-1. This alias is to make sure we have us-east-1 available
provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}
