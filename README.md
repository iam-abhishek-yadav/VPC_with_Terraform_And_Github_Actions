### AWS VPC Management with Terraform

This repository includes Terraform configurations designed for managing an AWS Virtual Private Cloud (VPC), allowing for both creation and destruction of the infrastructure.

**Prerequisites**

Before utilizing these Terraform configurations, ensure you have the following prerequisites in place:

- **AWS Account:** You must possess an active AWS account to create and manage resources.
- **Terraform Installation:** Make sure Terraform is installed on your local machine. You can download it from [Terraform's official website](https://www.terraform.io/downloads.html).

**Configuration**

- **Setting up AWS S3 Backend for Terraform:** To manage Terraform state, configure an S3 bucket in your AWS account named `terraform-backend-s3-github`. If this name is unavailable, create a bucket with a different name and update the `terraform_vpc/providers.tf` file accordingly.

	```hcl
	backend "s3" {
	  bucket = "bucket_name"
	  key    = "dev/terraform.tfstate"
	  region = "us-east-1"
	}
	```

**Usage**

- **Initialize Terraform:** Begin by initializing Terraform with the following command:

   ```bash
   terraform init
   ```

- **Create the VPC:** Execute the Terraform command below to create the VPC infrastructure:

   ```bash
   terraform apply --auto-approve
   ```

- **Destroy the VPC:** When no longer needed, destroy the VPC and associated resources using the command:

   ```bash
   terraform destroy --auto-approve
   ```
