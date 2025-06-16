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

resource "aws_instance" "example" {
  ami                         = "ami-012967cc5a8c9f891"
  instance_type               = "t2.micro"
  availability_zone           = "us-east-1b"
  monitoring                  = false
  ebs_optimized               = false
  associate_public_ip_address = true
  subnet_id                   = "subnet-f69e65ae"
  private_ip                  = "172.31.19.180"
  vpc_security_group_ids      = ["sg-03b33445f609f6c36"]

  root_block_device {
    delete_on_termination = true
    volume_id             = "vol-016ddd57228b3c977"
    device_name           = "/dev/xvda"
  }

  network_interface {
    device_index          = 0
    network_interface_id  = "eni-06bee6dc6b82e482e"
  }

  tags = {
    Name = "WEB2"
  }

  credit_specification {
    cpu_credits = "standard"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_tokens                 = "required"
    http_put_response_hop_limit = 2
    instance_metadata_tags      = "disabled"
  }

  cpu_options {
    core_count       = 1
    threads_per_core = 1
  }
}