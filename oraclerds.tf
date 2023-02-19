terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.54.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
  # Configuration options
}
resource "aws_db_instance" "JTEST" {
  allocated_storage    = var.storage
  db_name              = "jtest"
  engine               = "mysql"
  engine_version       = var.engine_version
  instance_class       = "db.t3.micro"
  username             = var.username
  password             = "brontech1"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}
