terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.16"
    }
  }

  required_version = ">= 1.0.0"
}



provider "aws" {
  region  = "eu-west-1"
}



resource "aws_instance" "app_server" {
  ami           = "ami-0e631950cf0535f03"
  instance_type = var.env == "prod" ? "t2.micro" : "t2.nano"

  tags = {
    Name = "Alon-EC2-${var.env}"
    
  }
}