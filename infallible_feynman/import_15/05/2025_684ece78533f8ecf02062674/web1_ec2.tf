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
  ami                    = "ami-012967cc5a8c9f891"
  instance_type          = "t2.micro"
  availability_zone     = "us-east-1b"
  tenancy               = "default"
  monitoring            = false
  ebs_optimized         = false
  ena_support           = true
  root_block_device {
    volume_id            = "vol-0a0cbcf8bb47f7629"
    delete_on_termination = true
  }
  network_interface {
    device_index         = 0
    network_interface_id = "eni-0f564473163f37bdd"
    delete_on_termination = true
  }
  security_groups       = ["sg-094978a31bfe6f7b8"]
  subnet_id             = "subnet-f69e65ae"
  private_ip            = "172.31.19.200"
  associate_public_ip_address = true
  source_dest_check     = true
  tags = {
    Name = "WEB1"
  }
  cpu_core_count        = 1
  cpu_threads_per_core  = 1
  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_tokens                 = "required"
    http_put_response_hop_limit = 2
    instance_metadata_tags      = "disabled"
  }
  enclave_options {
    enabled = false
  }
  private_dns_name_options {
    enable_resource_name_dns_a_record  = true
    enable_resource_name_dns_aaaa_record = false
    hostname_type = "ip-name"
  }
  maintenance_options {
    auto_recovery = "default"
  }
}