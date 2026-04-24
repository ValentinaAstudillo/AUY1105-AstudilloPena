package terraform.security

# Bloquear SSH abierto al mundo
deny[msg] {
  resource := input.resource_changes[_]
  resource.type == "aws_security_group"

  ingress := resource.change.after.ingress[_]
  ingress.from_port == 22
  ingress.cidr_blocks[_] == "0.0.0.0/0"

  msg = "No se permite acceso SSH abierto a todo internet (0.0.0.0/0)"
}

# Permitir solo instancias EC2 tipo t2.micro
deny[msg] {
  resource := input.resource_changes[_]
  resource.type == "aws_instance"

  resource.change.after.instance_type != "t2.micro"

  msg = "Solo se permite la creación de instancias EC2 tipo t2.micro"
}