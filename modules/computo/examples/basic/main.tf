module "computo" {
  source = "../../"

  instance_type     = "t2.micro"
  subnet_id         = "subnet-example"
  security_group_id = "sg-example"
  instance_name     = "AUY1105-duocapp-ec2"
}