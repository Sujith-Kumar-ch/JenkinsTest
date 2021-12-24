provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region = var.aws_region
}

resource "aws_instance" "my_jenkins_ec2" {
    count           = var.is_ec2 ? 1 : 0
    ami             = var.ami_id
    key_name        = var.key_name
    instance_type   = var.instance_type

    tags = {
        name = "my_jenkins_ec2"
    }
}

resource "aws_s3_bucket" "my_jenkins_bucket" {
  count           = var.is_ec2 ? 0 : 1
  bucket = "my_jenkins_bucket"
  acl = "private"

  tags = {
      name = "my_jenkins_bucket"
  }
}