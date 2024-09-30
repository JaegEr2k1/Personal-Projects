provider "aws" {
  region = "ap-southeast-1"
}

module "vpc" {
  source                      = "./modules/vpc"
  prefix_name                 = var.prefix_name
  env                         = var.env
  owner                       = var.owner
  vpc_cidr_block              = var.vpc_cidr_block
  subnet_cidr_block_private_a = var.subnet_cidr_block_private_a
  subnet_cidr_block_private_b = var.subnet_cidr_block_private_b
  subnet_cidr_block_public_a  = var.subnet_cidr_block_public_a
  subnet_cidr_block_public_b  = var.subnet_cidr_block_public_b
  subnet_region_a             = var.subnet_region_a
  subnet_region_b             = var.subnet_region_b
}

module "sg" {
  source      = "./modules/sg"
  prefix_name = var.prefix_name
  env         = var.env
  owner       = var.owner
  vpc_id      = module.vpc.vpc_id
}

module "ec2" {
  source              = "./modules/ec2"
  prefix_name         = var.prefix_name
  env                 = var.env
  owner               = var.owner
  ami                 = var.ami
  key_name            = var.key_name
  instance_type       = var.instance_type
  vpc_id              = module.vpc.vpc_id
  iam_role_name       = module.iam.ec2_role_name
  public_subnet_a_id  = module.vpc.public_subnet_a_id
  private_subnet_b_id = module.vpc.private_subnet_b_id
  security_group_id   = module.sg.security_group_id
}

module "lb" {
  source             = "./modules/lb"
  prefix_name        = var.prefix_name
  env                = var.env
  owner              = var.owner
  vpc_id             = module.vpc.vpc_id
  public_subnet_a_id = module.vpc.public_subnet_a_id
  public_subnet_b_id = module.vpc.public_subnet_b_id
  security_group_id  = module.sg.security_group_id
}

module "asg" {
  source             = "./modules/asg"
  prefix_name        = var.prefix_name
  env                = var.env
  owner              = var.owner
  instance_type      = var.instance_type
  ami                = var.ami
  desired_capacity   = var.desired_capacity
  max_size           = var.max_size
  min_size           = var.min_size
  key_name           = var.key_name
  vpc_id             = module.vpc.vpc_id
  public_subnet_a_id = module.vpc.public_subnet_a_id
  public_subnet_b_id = module.vpc.public_subnet_b_id
  security_group_id  = module.sg.security_group_id
  target_group_arn   = module.lb.target_group_arn
}

module "iam" {
  source      = "./modules/iam"
  prefix_name = var.prefix_name
  env         = var.env
  owner       = var.owner
}

module "s3" {
  source      = "./modules/s3"
  region      = var.region
  env         = var.env
  prefix_name = var.prefix_name
  owner       = var.owner
}