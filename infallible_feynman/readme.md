# Terraform Documentation for AWS EC2 Instances

## Overview

This Terraform configuration deploys multiple AWS EC2 instances with specific configurations. Each instance is defined in a separate file and includes settings for the AMI, instance type, subnet, CPU options, network interface, and credit specification. The instances are tagged with unique names for identification.

## Modules & Resources

### AWS EC2 Instances

#### `admiring_babbage`

- **Resource:** `aws_instance`
- **Purpose:** Deploys an EC2 instance with the specified configurations.
- **Configuration:**
  - **AMI:** Specified by the `<ami>` variable.
  - **Instance Type:** `g5g`
  - **Subnet ID:** Specified by the `<subnet_id>` variable.
  - **CPU Options:**
    - **Core Count:** Specified by the `<core_count>` variable.
    - **Threads per Core:** Specified by the `<threads_per_core>` variable.
  - **Network Interface:**
    - **Network Interface ID:** Specified by the `<network_interface_id>` variable.
    - **Device Index:** `0`
  - **Credit Specification:** `cpu_credits = "unlimited"`
  - **Tags:** `Name = "admiring_babbage"`

#### `friendly_shockley`

- **Resource:** `aws_instance`
- **Purpose:** Deploys an EC2 instance with the specified configurations.
- **Configuration:**
  - **AMI:** Specified by the `<ami>` variable.
  - **Instance Type:** `g3s`
  - **Subnet ID:** Specified by the `<subnet_id>` variable.
  - **CPU Options:**
    - **Core Count:** Specified by the `<core_count>` variable.
    - **Threads per Core:** Specified by the `<threads_per_core>` variable.
  - **Network Interface:**
    - **Network Interface ID:** Specified by the `<network_interface_id>` variable.
    - **Device Index:** `0`
  - **Credit Specification:** `cpu_credits = "unlimited"`
  - **Tags:** `Name = "friendly_shockley"`

#### `ecstatic_panini`

- **Resource:** `aws_instance`
- **Purpose:** Deploys an EC2 instance with the specified configurations.
- **Configuration:**
  - **AMI:** Specified by the `<ami>` variable.
  - **Instance Type:** `dl2q.24xlarge`
  - **Subnet ID:** Specified by the `<subnet_id>` variable.
  - **CPU Options:**
    - **Core Count:** Specified by the `<core_count>` variable.
    - **Threads per Core:** Specified by the `<threads_per_core>` variable.
  - **Network Interface:**
    - **Network Interface ID:** Specified by the `<network_interface_id>` variable.
    - **Device Index:** `0`
  - **Credit Specification:** `cpu_credits = "unlimited"`
  - **Tags:** `Name = "ecstatic_panini"`

#### `musing_colden`

- **Resource:** `aws_instance`
- **Purpose:** Deploys an EC2 instance with the specified configurations.
- **Configuration:**
  - **AMI:** Specified by the `<ami>` variable.
  - **Instance Type:** `g2.8xlarge`
  - **Subnet ID:** Specified by the `<subnet_id>` variable.
  - **CPU Options:**
    - **Core Count:** Specified by the `<core_count>` variable.
    - **Threads per Core:** Specified by the `<threads_per_core>` variable.
  - **Network Interface:**
    - **Network Interface ID:** Specified by the `<network_interface_id>` variable.
    - **Device Index:** `0`
  - **Credit Specification:** `cpu_credits = "unlimited"`
  - **Tags:** `Name = "musing_colden"`

## Variables

### Input Variables

- **ami**
  - **Description:** The AMI ID to use for the EC2 instance.
  - **Type:** `string`
  - **Default:** None

- **subnet_id**
  - **Description:** The ID of the subnet in which to launch the instance.
  - **Type:** `string`
  - **Default:** None

- **core_count**
  - **Description:** The number of CPU cores for the instance.
  - **Type:** `number`
  - **Default:** None

- **threads_per_core**
  - **Description:** The number of threads per CPU core.
  - **Type:** `number`
  - **Default:** None

- **network_interface_id**
  - **Description:** The ID of the network interface to attach to the instance.
  - **Type:** `string`
  - **Default:** None

## Outputs

No outputs are defined in the provided Terraform files. If needed, outputs can be added to expose specific attributes of the deployed resources.

## Providers & Dependencies

### Required Providers

- **AWS:** The AWS provider is required to manage AWS resources. Ensure that the AWS CLI is configured with the necessary credentials and permissions.

### External Dependencies

- **Terraform:** Ensure that Terraform is installed and configured on your local machine.
- **AWS CLI:** Ensure that the AWS CLI is installed and configured with the necessary credentials and permissions.

## Usage Instructions

### Prerequisites

1. **Install Terraform:** Ensure that Terraform is installed on your local machine. You can download it from the [Terraform website](https://www.terraform.io/downloads.html).
2. **Configure AWS CLI:** Ensure that the AWS CLI is installed and configured with the necessary credentials and permissions.

### Step-by-Step Guide

1. **Initialize Terraform:**
   ```sh
   terraform init
   ```

2. **Plan the Infrastructure:**
   ```sh
   terraform plan
   ```

3. **Apply the Infrastructure:**
   ```sh
   terraform apply
   ```

4. **Destroy the Infrastructure:**
   ```sh
   terraform destroy
   ```

## Best Practices & Security Considerations

### Security

- **IAM Roles and Policies:** Ensure that the IAM roles and policies used by the EC2 instances have the least privilege necessary.
- **Network Security:** Use security groups and network ACLs to control inbound and outbound traffic to the instances.
- **Encryption:** Ensure that data at rest and in transit is encrypted.

### Scalability

- **Auto Scaling:** Consider using AWS Auto Scaling groups to manage the scaling of your instances based on demand.
- **Load Balancing:** Use AWS Elastic Load Balancing (ELB) to distribute traffic across multiple instances.

### Maintainability

- **Modular Code:** Organize your Terraform code into reusable modules to make it easier to manage and maintain.
- **Version Control:** Use version control systems like Git to track changes to your Terraform code.
- **Documentation:** Keep your Terraform code well-documented to ensure that it is easy to understand and maintain.

By following these best practices, you can ensure that your infrastructure is secure, scalable, and maintainable.