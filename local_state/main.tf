terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "eu-west-2"
}

resource "aws_instance" "terraform-server" {
  ami           = "ami-0e5f882be1900e43b"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform_Demo"
  }
}