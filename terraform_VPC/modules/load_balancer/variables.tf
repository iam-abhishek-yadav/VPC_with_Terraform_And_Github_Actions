variable "asg_id" {
  description = "Security Group Id"
  type = string
}

variable "subnets" {
  description = "Subnets"
  type = list(string)
}

variable "vpc_id" {
  description = "VPC ID"
  type = string
}

variable "instances" {
  description = "Instance Id"
  type = list(string)
}