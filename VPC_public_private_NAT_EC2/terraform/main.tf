
module "vpc" {
  source              = "../../modules/vpc"
  vpc_cidr            = "10.1.0.0/16" # var.vpc_parameters.vpc_cidr
  public_subnet_cidr  = "10.1.1.0/24" # var.vpc_parameters.public_subnet_cidr
  private_subnet_cidr = "10.1.2.0/24" # var.vpc_parameters.private_subnet_cidr
  public_subnet_az    = "us-east-1a"  # var.vpc_parameters.public_subnet_az
  private_subnet_az   = "us-east-1b"  # var.vpc_parameters.private_subnet_az # null 
  sg_ingress_cidr     = "0.0.0.0/0"
  tags                = var.tags_project
}


module "ec2_public" {
  source                = "../../modules/ec2"
  ami                   = var.ec2_specs.ami
  instance_type         = var.ec2_specs.instance_type
  subnet_id             = module.vpc.public_subnet_id
  vpc_security_group_id = module.vpc.public_security_group_id
}


module "ec2_private" {
  source                = "../../modules/ec2"
  ami                   = var.ec2_specs.ami
  instance_type         = var.ec2_specs.instance_type
  subnet_id             = module.vpc.private_subnet_id
  vpc_security_group_id = module.vpc.private_security_group_id
}

