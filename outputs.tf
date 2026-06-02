output "vpc_id" {
  description = "ID de la VPC"
  value       = module.redes.vpc_id
}

output "subnet_id" {
  description = "ID de la subnet"
  value       = module.redes.subnet_ids[0]
}

output "instance_id" {
  description = "ID de la instancia EC2"
  value       = module.computo.instance_id
}

output "instance_ip" {
  description = "IP pública de la instancia"
  value       = module.computo.instance_ip
}