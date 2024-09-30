provider "aws" {
  region = var.region
}

module "sg" {
  source      = "./modules/sg"
  prefix_name = var.prefix_name
  env         = var.env
  owner       = var.owner
}

module "iam" {
  source      = "./modules/iam"
  prefix_name = var.prefix_name
  env         = var.env
  owner       = var.owner
}

module "ec2" {
  source            = "./modules/ec2"
  prefix_name       = var.prefix_name
  env               = var.env
  owner             = var.owner
  ami               = var.ami
  instance_type     = var.instance_type
  key_name          = var.key_name
  security_group_id = module.sg.security_group_id
}