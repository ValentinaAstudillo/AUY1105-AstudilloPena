# Módulo Redes

Este módulo de Terraform permite crear los recursos principales de red para la infraestructura en AWS.

## Objetivo

Crear una VPC, una subnet pública y un Security Group para permitir el despliegue de recursos de cómputo.

## Recursos creados

- AWS VPC
- AWS Subnet
- AWS Security Group

## Variables

| Variable | Descripción |
|---|---|
| vpc_cidr | CIDR block de la VPC |
| vpc_name | Nombre de la VPC |
| subnet_cidr | CIDR block de la subnet |
| subnet_name | Nombre de la subnet |
| sg_name | Nombre del Security Group |
| allowed_ssh_cidr | CIDR permitido para conexión SSH |

## Outputs

| Output | Descripción |
|---|---|
| vpc_id | ID de la VPC creada |
| subnet_ids | Lista de IDs de las subnets creadas |
| security_group_id | ID del Security Group creado |

## Ejemplo de uso

```hcl
module "redes" {
  source = "./modules/redes"

  vpc_cidr         = "10.1.0.0/16"
  vpc_name         = "AUY1105-duocapp-vpc"
  subnet_cidr      = "10.1.1.0/24"
  subnet_name      = "AUY1105-duocapp-subnet"
  sg_name          = "AUY1105-duocapp-sg"
  allowed_ssh_cidr = "0.0.0.0/0"
}