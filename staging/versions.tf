terraform {

  cloud {
    organization = "<ORGANIZATION_NAME>"

    workspaces {
      name = "learn-terraform-cloud-variable-sets-staging"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.63"
    }
  }

  required_version = ">= 1.1.0"
}
