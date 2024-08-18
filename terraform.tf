provider "aws" {
  region = "us-east-1"  # Change this to your preferred region
}

resource "aws_instance" "test_server" {
  ami           = "ami-0a0e5d9c7acc336f1"  # Change this to your preferred AMI
  instance_type = "t2.micro"
  key_name      = "ansible"  # Replace with your key pair name
  security_groups = ["launch-wizard-2"]  # Replace with your security group name

  tags = {
    Name = "test-server"
  }
}

resource "aws_instance" "prod_server" {
  ami           = "ami-0a0e5d9c7acc336f1"  # Change this to your preferred AMI
  instance_type = "t2.micro"
  key_name      = "ansible"  # Replace with your key pair name
  security_groups = ["launch-wizard-2"]  # Replace with your security group name

  tags = {
    Name = "prod-instance"
      }
}

}
