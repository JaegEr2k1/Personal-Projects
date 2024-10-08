variable "vpc_id" {
  type = string
}
variable "public_subnet_a_id" {
  type = string
}

variable "private_subnet_b_id" {
  type = string
}

variable "security_group_id" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "key_name" {
  type = string
}

variable "ami" {
  type = string  
}

variable "iam_role_name" {
  type = string
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