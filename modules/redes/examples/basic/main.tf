module "redes" {
  source = "../../"

  vpc_cidr         = "10.1.0.0/16"
  vpc_name         = "AUY1105-duocapp-vpc"
  subnet_cidr      = "10.1.1.0/24"
  subnet_name      = "AUY1105-duocapp-subnet"
  sg_name          = "AUY1105-duocapp-sg"
  allowed_ssh_cidr = "0.0.0.0/0"
}