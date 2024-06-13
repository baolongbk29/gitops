terraform {
    required_version = "1.5.4"

    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "~>4.0"
      }
    }


    backend "s3" {
        bucket = "terraform-demo-1-longlb"
        key= "aws_s3_static_web/terraform.tfstate"
        region = "ap-southeast-1"
    }
}


provider "aws" {
    region = "ap-southeast-1"
}
