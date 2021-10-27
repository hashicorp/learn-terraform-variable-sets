variable "aws_region" {
  type    = string
  default = "us-east-2"
}

variable "db_read_capacity" {
  type = number
}

variable "db_write_capacity" {
  type = number
}
