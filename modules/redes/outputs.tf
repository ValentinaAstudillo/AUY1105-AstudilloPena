output "vpc_id" {
  description = "ID de la VPC creada"
  value       = aws_vpc.main.id
}

output "subnet_ids" {
  description = "Lista de IDs de las subnets creadas"
  value       = [aws_subnet.subnet.id]
}

