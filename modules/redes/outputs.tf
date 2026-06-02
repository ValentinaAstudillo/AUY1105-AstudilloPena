output "vpc_id" {
  description = "ID de la VPC creada"
  value       = aws_vpc.main.id
}

output "subnet_ids" {
  description = "Lista de IDs de las subnets creadas"
  value       = [aws_subnet.subnet.id]
}

output "security_group_id" {
  description = "ID del Security Group creado"
  value       = aws_security_group.sg.id
}