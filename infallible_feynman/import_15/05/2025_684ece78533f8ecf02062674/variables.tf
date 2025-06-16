variable "ami" {
  description = "The AMI ID to use for the instance"
  type        = string
  default     = "ami-012967cc5a8c9f891"
}

variable "instance_type" {
  description = "The instance type to use"
  type        = string
  default     = "t2.micro"
}

variable "availability_zone" {
  description = "The availability zone to launch the instance in"
  type        = string
  default     = "us-east-1b"
}

variable "tenancy" {
  description = "The tenancy of the instance"
  type        = string
  default     = "default"
}

variable "monitoring" {
  description = "If true, the launched EC2 instance will have detailed monitoring enabled"
  type        = bool
  default     = false
}

variable "ebs_optimized" {
  description = "If true, the launched EC2 instance will be EBS-optimized"
  type        = bool
  default     = false
}

variable "ena_support" {
  description = "If true, the launched EC2 instance will have enhanced networking enabled"
  type        = bool
  default     = true
}

variable "root_block_device_volume_id" {
  description = "The volume ID for the root block device"
  type        = string
  default     = "vol-0a0cbcf8bb47f7629"
}

variable "root_block_device_delete_on_termination" {
  description = "Whether the root block device should be deleted on instance termination"
  type        = bool
  default     = true
}

variable "network_interface_id" {
  description = "The ID of the network interface to associate with the instance"
  type        = string
  default     = "eni-0f564473163f37bdd"
}

variable "security_groups" {
  description = "A list of security group names to associate with"
  type        = list(string)
  default     = ["sg-094978a31bfe6f7b8"]
}

variable "subnet_id" {
  description = "The VPC Subnet ID to launch in"
  type        = string
  default     = "subnet-f69e65ae"
}

variable "private_ip" {
  description = "The private IP address to associate with the instance"
  type        = string
  default     = "172.31.19.200"
}

variable "associate_public_ip_address" {
  description = "If true, the instance will be assigned a public IP address"
  type        = bool
  default     = true
}

variable "source_dest_check" {
  description = "Controls if traffic is routed to the instance when the destination address does not match the instance"
  type        = bool
  default     = true
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default     = { Name = "WEB1" }
}

variable "cpu_core_count" {
  description = "The number of CPU cores for the instance"
  type        = number
  default     = 1
}

variable "cpu_threads_per_core" {
  description = "The number of threads per CPU core for the instance"
  type        = number
  default     = 1
}

variable "capacity_reservation_preference" {
  description = "The capacity reservation preference"
  type        = string
  default     = "open"
}

variable "http_endpoint" {
  description = "Whether the metadata service is available"
  type        = string
  default     = "enabled"
}

variable "http_tokens" {
  description = "Whether or not the metadata service requires session tokens"
  type        = string
  default     = "required"
}

variable "http_put_response_hop_limit" {
  description = "The desired HTTP PUT response hop limit for instance metadata requests"
  type        = number
  default     = 2
}

variable "instance_metadata_tags" {
  description = "Whether instance metadata tags are enabled or disabled"
  type        = string
  default     = "disabled"
}

variable "enclave_options_enabled" {
  description = "Whether Nitro Enclaves will be enabled on the instance"
  type        = bool
  default     = false
}

variable "enable_resource_name_dns_a_record" {
  description = "Indicates whether to respond to DNS queries for instance hostnames with DNS A records"
  type        = bool
  default     = true
}

variable "enable_resource_name_dns_aaaa_record" {
  description = "Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records"
  type        = bool
  default     = false
}

variable "hostname_type" {
  description = "The type of hostname to assign to the instance"
  type        = string
  default     = "ip-name"
}

variable "auto_recovery" {
  description = "The desired maintenance recovery behavior"
  type        = string
  default     = "default"
}

variable "credit_specification_cpu_credits" {
  description = "The credit option for CPU usage"
  type        = string
  default     = "standard"
}

variable "vpc_security_group_ids" {
  description = "A list of security group IDs to associate with"
  type        = list(string)
  default     = ["sg-03b33445f609f6c36"]
}