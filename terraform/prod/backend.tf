terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "jacobus-test"
    workspaces {
      name = "prod"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.67.0"
    }
  }
}
