provider "aws" {
  region     = "ap-south-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_instance" "web" {
  ami           = "ami-002f6e91abff6eb96"
  instance_type = "t2.micro"

  tags = {
    Name = "jenkins-terraform-ec2"
  }
}

