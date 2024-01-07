variable "asg_id" {
  description = "SG ID for EC2"
  type = string
}

variable "subnets" {
  description = "Subnets for EC2"
  type = list(string)
}

variable "ec2_names" {
  description = "Instance Names"
  type = list(string)
  default = [ "Instance1", "Instance2"]
}