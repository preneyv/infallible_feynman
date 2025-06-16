output "aws_instance_example_id" {
  description = "The ID of the EC2 instance example."
  value       = aws_instance.example.id
}

output "aws_instance_example_public_ip" {
  description = "The public IP address of the EC2 instance example."
  value       = aws_instance.example.public_ip
}

output "aws_instance_example_private_ip" {
  description = "The private IP address of the EC2 instance example."
  value       = aws_instance.example.private_ip
}

output "aws_instance_example_public_dns" {
  description = "The public DNS name of the EC2 instance example."
  value       = aws_instance.example.public_dns
}

output "aws_instance_example_private_dns" {
  description = "The private DNS name of the EC2 instance example."
  value       = aws_instance.example.private_dns
}

output "aws_instance_example_arn" {
  description = "The ARN of the EC2 instance example."
  value       = aws_instance.example.arn
}

output "aws_instance_example_instance_state" {
  description = "The state of the EC2 instance example."
  value       = aws_instance.example.instance_state
}

output "aws_instance_example_key_name" {
  description = "The key name of the EC2 instance example."
  value       = aws_instance.example.key_name
}

output "aws_instance_example_security_groups" {
  description = "The security groups of the EC2 instance example."
  value       = aws_instance.example.security_groups
}

output "aws_instance_example_subnet_id" {
  description = "The subnet ID of the EC2 instance example."
  value       = aws_instance.example.subnet_id
}

output "aws_instance_example_availability_zone" {
  description = "The availability zone of the EC2 instance example."
  value       = aws_instance.example.availability_zone
}

output "aws_instance_example_network_interface_id" {
  description = "The network interface ID of the EC2 instance example."
  value       = aws_instance.example.network_interface_id
}

output "aws_instance_example_root_block_device_volume_id" {
  description = "The volume ID of the root block device of the EC2 instance example."
  value       = aws_instance.example.root_block_device[0].volume_id
}

output "aws_instance_example_instance_type" {
  description = "The instance type of the EC2 instance example."
  value       = aws_instance.example.instance_type
}