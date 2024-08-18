terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS provider
provider "aws" {
  region     = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

# Define variables for sensitive information
variable "aws_access_key" {
  description = "AWS access key"
  type        = string
}

variable "aws_secret_key" {
  description = "AWS secret key"
  type        = string
}

# Resource for test server
resource "aws_instance" "test_server" {
  ami           = "ami-0a0e5d9c7acc336f1"  # Change this to your preferred AMI
  instance_type = "t2.micro"
  key_name      = "ansible"  # Replace with your key pair name
  security_groups = ["launch-wizard-2"]  # Replace with your security group name

  tags = {
    Name = "test-server"
  }
}

# Resource for production server
resource "aws_instance" "prod_server" {
  ami           = "ami-0a0e5d9c7acc336f1"  # Change this to your preferred AMI
  instance_type = "t2.micro"
  key_name      = "ansible"  # Replace with your key pair name
  security_groups = ["launch-wizard-2"]  # Replace with your security group name

  tags = {
    Name = "prod-server"
  }
}
