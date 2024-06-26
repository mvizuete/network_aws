
module "vpc" {
  source              = "./modules/vpc"
  vpc_cidr            = var.vpc_parameters_1.vpc_cidr
  public_subnet_cidr  = var.vpc_parameters_1.public_subnet_cidr
  private_subnet_cidr = var.vpc_parameters_1.private_subnet_cidr
  public_subnet_az    = var.vpc_parameters_1.public_subnet_az
  private_subnet_az   = var.vpc_parameters_1.private_subnet_az

  tags            = var.tags_project
  sg_ingress_cidr = var.sg_ingress_cidr
}


module "ec2" {
  source        = "./modules/ec2"
  ami           = var.ec2_specs.ami
  instance_type = var.ec2_specs.instance_type
  subnet_id     = module.vpc.public_subnet_id
}

