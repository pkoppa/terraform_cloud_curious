terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.31.0"
    }
  }
}

resource "aws_instance" "web" {
  ami           = "ami-031b673f443c2172c"
  instance_type = "t3.micro"
}
