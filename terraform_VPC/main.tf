module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  subnet_cidr = var.subnet_cidr
}

module "security_group" {
    source = "./modules/security_group"
    vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source = "./modules/ec2"
  asg_id = module.security_group.asg_id
  subnets = module.vpc.subnet_ids
}

module "load_balancer" {
  source = "./modules/load_balancer"
  asg_id = module.security_group.asg_id
  subnets = module.vpc.subnet_ids
  vpc_id = module.vpc.vpc_id
  instances = module.ec2.instances
}