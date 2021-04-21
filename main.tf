terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.31.0"
    }
  }
}


provider "aws" {
  region     = "us-west-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "web" {
  ami           = "ami-031b673f443c2172c"
  instance_type = "t3.micro"

  tags = {
    Name = "tf-example"
  }
}
