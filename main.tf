terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "redes" {
  source = "./modules/redes"

  vpc_cidr         = var.vpc_cidr
  vpc_name         = "AUY1105-duocapp-vpc"
  subnet_cidr      = var.subnet_cidr
  subnet_name      = "AUY1105-duocapp-subnet"
  sg_name          = "AUY1105-duocapp-sg"
  allowed_ssh_cidr = var.allowed_ssh_cidr
}

module "computo" {
  source = "./modules/computo"

  instance_type     = "t2.micro"
  subnet_id         = module.redes.subnet_ids[0]
  security_group_id = module.redes.security_group_id
  instance_name     = "AUY1105-duocapp-ec2"
}