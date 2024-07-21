terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.51.0"
    }
  }

  required_version = ">= 0.13"
}

provider "aws" {
  region = var.aws_region
}


module "ec2_instance" {
  source         = "./modules/ec2"
  security_group = module.security_group.sg_id
  public_subnet  = module.vpc.public_subnet_id
}

module "security_group" {
  source = "./modules/security_group"
  vpc_id = module.vpc.vpc_id
  my_ip  = var.my_ip
}

module "vpc" {
  source = "./modules/vpc"

  vpc_cidr_block           = var.vpc_cidr_block
  public_subnet_cidr_block = var.public_subnet_cidr_block
}
