


variable "ami" {
  description = "AMI of instance"
  type        = string
}

variable "instance_type" {
  description = "Instance type"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID"
  type        = string
}

variable "vpc_security_group_id" {
  description = "Security group ID"
  type        = string
}
