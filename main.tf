terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.73.0"
    }
  }
  backend "s3" {
    bucket = "demo-terraform-bucket"
    region = "us-gov-west-1"
    key = "dev/test/terraform.tfstate"
    dynamodb_table = "demo-state"
  }
}

provider "aws" {
  region =  "us-gov-west-1"
}


resource "aws_instance" "web" {
    count = var.instance-count
    ami = var.ami-type
    instance_type = var.instace-type

    tags = {
      name = " web-instance-${count.index}"
    }
  
}
