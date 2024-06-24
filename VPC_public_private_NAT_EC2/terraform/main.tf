

module "vpc" {
  source              = "./modules/vpc"
  vpc_cidr            = var.vpc_parameters.vpc_cidr
  public_subnet_cidr  = var.vpc_parameters.public_subnet_cidr
  private_subnet_cidr = var.vpc_parameters.private_subnet_cidr
  public_subnet_az    = var.vpc_parameters.public_subnet_az
  private_subnet_az   = var.vpc_parameters.private_subnet_az

  tags            = var.tags_project
  sg_ingress_cidr = var.sg_ingress_cidr
}


# module "ec2" {
#   source         = "./modules/ec2"
# }

