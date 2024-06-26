
variable "vpc_parameters_1" {
  description = "VPC parameter"
  type        = map(string)
}

variable "vpc_parameters_2" {
  description = "VPC parameter"
  type        = map(string)
}

variable "tags_project" {
  description = "Tags project"
  type        = map(string)
}

variable "sg_ingress_cidr" {
  description = "CIDR for ingress traffic"
  type        = string
}

variable "ec2_specs" {
  description = "Instance parameters"
  type        = map(string)
}

