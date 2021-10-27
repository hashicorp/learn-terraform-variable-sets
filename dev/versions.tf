terraform {

  backend "remote" {
    organization = "<ORGANIZATION_NAME>"

    workspaces {
      name = "learn-terraform-cloud-variable-sets-dev"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.63"
    }
  }

  required_version = ">= 0.15"
}
