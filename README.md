# Terraform VPC Creation and Destruction

This repository contains Terraform configurations for creating and destroying an AWS Virtual Private Cloud (VPC).

## Prerequisites

Before using this Terraform configuration, ensure that you have the following prerequisites set up:

1. **AWS Account:** You need an AWS account to create and manage resources.
2. **Terraform Installed:** Ensure that Terraform is installed on your local machine. You can download it from [Terraform's official website](https://www.terraform.io/downloads.html).

## Configuration

### AWS S3 Bucket for Terraform Backend

Create an S3 bucket in your AWS account named `terraform-backend-s3-github` to be used as the backend for Terraform state. If this name is not available, create a new one.

Update the `terraform_vpc/providers.tf` file with the correct bucket name.

```tf
backend "s3" {
    bucket = "bucket_name"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
```

## Usage

1. **Initialize Terraform:**

   Run the initialization command.

   ```bash
   terraform init
   ```

2. **Create VPC:**

   To create the VPC, follow the relevant Terraform command.

   ```bash
   terraform apply --auto-approve
   ```

3. **Destroy VPC:**

   To destroy the VPC and associated resources, follow the relevant Terraform command.

   ```bash
   terraform destroy --auto-approve
   ```

## Cleanup

After you have finished using the infrastructure, it's recommended to destroy it to avoid incurring unnecessary charges. Follow the "Destroy VPC" instructions mentioned above.
