terraform {
  required_version = "1.9.8"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.99.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

# Resources will be included via relative file paths
module "aws_instance_example_1" {
  source = "./aws_instance_example_1"
}

module "aws_instance_example_2" {
  source = "./aws_instance_example_2"
}