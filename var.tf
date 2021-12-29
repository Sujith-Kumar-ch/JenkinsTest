variable "aws_access_key" {
}

variable "aws_secret_key" {
}

variable "aws_region" {
  default = "ap-south-1"
}

variable "is_ec2" {
    type = bool
    default = false
}



variable "ami_id" {
    description = "AMI for ec2 instance"
    default     = "ami-0851b76e8b1bce90b"
}

variable "instance_type" {
    description = "instance type for ec2"
    default     = "t2.micro"
}
