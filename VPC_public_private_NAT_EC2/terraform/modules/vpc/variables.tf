
variable "tags" {
  description = "Project Tags"
  type        = map(string)
}

variable "vpc_cidr" {
  description = "CIDR Virginia"
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR public subnet"
  type        = string
}

variable "public_subnet_az" {
  description = "Availability Zone public subnet"
  type        = string
}

variable "private_subnet_cidr" {
  description = "CIDR private subnet"
  type        = string
}

variable "private_subnet_az" {
  description = "Availability Zone private subnet"
  type        = string
}

variable "sg_ingress_cidr" {
  description = "Security Group ingress CIDR"
  type        = string
}
