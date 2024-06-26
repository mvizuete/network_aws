variable "tags_project" {
  description = "Tags project"
  type        = map(string)
}



variable "region" {
  default = "eu-central-1"
}

variable "az1" {
  default = "eu-central-1a"
}

variable "az2" {
  default = "eu-central-1b"
}

variable "scenario" {
  default = "test-tgw"
}

