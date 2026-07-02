module "redes" {
  source = "./modules/redes"

  vpc_cidr    = var.vpc_cidr
  vpc_name    = "AUY1105-duocapp-vpc"
  subnet_cidr = var.subnet_cidr
  subnet_name = "AUY1105-duocapp-subnet"
}

module "computo" {
  source = "./modules/computo"

  instance_type     = "t2.micro"
  subnet_id         = module.redes.subnet_ids[0]
  security_group_id = var.existing_security_group_id
  instance_name     = "AUY1105-duocapp-ec2"
}