provider "aws" {
  region = var.region
}

module "s3" {
  source      = "./modules/s3"
  region      = var.region
  env         = var.env
  prefix_name = var.prefix_name
  owner       = var.owner
}


