provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region = var.aws_region
}

resource "aws_instance" "myec2instance" {
    count           = var.is_ec2 ? 1 : 0
    ami             = var.ami_id
    key_name        = var.key_name
    instance_type   = var.instance_type

    tags = {
        name = "sujithec2"
    }
}

resource "aws_s3_bucket" "mys3bucket" {
  count           = var.is_ec2 ? 0 : 1
  bucket = "sujithbucket"
  acl = "private"

  tags = {
      name = "sujithbucket"
      Environment = "Dev"
  }
}
