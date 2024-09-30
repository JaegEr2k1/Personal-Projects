variable "region" {
  type = string
  default = "ap-southeast-1"
  description = "Region"
}

variable "ami" {
  type = string
  default = "ami-0aa097a5c0d31430a"
  description = "AMI ID"
}
variable "instance_type" {
  type = string
  default = "t2.micro"
  description = "Instance type"
}

variable "key_name" {
  type = string
  default = "terraform"
  description = "Instance key pair name"
}

variable "security_group_id" {
  type = string
  description = "Securiry group id for instance"
}

variable "prefix_name" {
   type = string
}

variable "owner" {
   type = string
}

variable "env" {
   type = string
}