provider "random" {}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Environment = "staging"
      Service     = "hashicorp-learn-terraform-cloud-variable-sets"
    }
  }
}

resource "random_pet" "table_name" {}

resource "aws_dynamodb_table" "table" {
  name = "staging-${random_pet.table_name.id}"

  read_capacity  = var.db_read_capacity
  write_capacity = var.db_write_capacity
  hash_key       = "UUID"

  attribute {
    name = "UUID"
    type = "S"
  }
}
