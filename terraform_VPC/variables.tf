variable "vpc_cidr" {
  description = "VPC CIDR Range"
  type = string
}

variable "subnet_cidr" {
    description = "Subnet CIDRs"
    type = list(string)
}