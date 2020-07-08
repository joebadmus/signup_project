//Global variables
variable "region" {
  description = "AWS region"
  default     = "eu-west-2"
}

variable "shared_credentials_file" {
  description = "AWS credentials file path"
  default     = "/home/joe/keys/demo.pem"
}

variable "aws_profile" {
  description = "AWS profile"
  default     = "default"
}

variable "availability_zone" {
  description = "Availability Zones"
  default     = "eu-west-2a"
}


// Default variables
variable "vpc_name" {
  description = "VPC name"
  default     = "mainvpc"
}

variable "cidr_block" {
  description = "VPC CIDR block"
  default     = "10.0.0.0/16"
}

variable "instance_type" {
  default     = "t2.micro"
  description = "EC2 instance type"
}

variable "ami" {
  description = "Amazon Linux AMI"
  default     = "ami-05f37c3995fffb4fd"
}

variable "key_name" {
  default = "proj-west-2-key"
}

variable "author" {
  default     = "Joebadmus"
  description = "Name of Author"
}

variable "tool" {
  default     = "Terraform"
  description = "IaC tool of choice"
}
