tags_project = {
  "env"         = "dev"
  "owner"       = "mvizuete"
  "cloud"       = "aws"
  "IAC"         = "Terraform"
  "IAC_Version" = "1.3.6"
  "project"     = "aws_security_01"
  "region"      = "virginia"
}

vpc_parameters_1 = {
  "vpc_cidr"            = "10.1.0.0/16"
  "public_subnet_cidr"  = "10.1.1.0/24"
  "private_subnet_cidr" = "10.1.2.0/24"
  "public_subnet_az"    = "us-east-1a"
  "private_subnet_az"   = "us-east-1b"

}

vpc_parameters_2 = {
  "vpc_cidr"            = "10.2.0.0/16"
  "public_subnet_cidr"  = "10.2.1.0/24"
  "private_subnet_cidr" = "10.2.2.0/24"
  "public_subnet_az"    = "us-east-1a"
  "private_subnet_az"   = "us-east-1b"
}

sg_ingress_cidr = "0.0.0.0/0"


ec2_specs = {
  "ami"           = "ami-01b799c439fd5516a"
  "instance_type" = "t2.micro"
}
