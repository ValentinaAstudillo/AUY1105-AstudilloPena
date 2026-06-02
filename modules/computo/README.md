# Módulo Computo

Este módulo de Terraform permite desplegar una instancia EC2 en AWS utilizando una subnet y un Security Group previamente creados.

## Objetivo

Implementar recursos de cómputo reutilizables mediante Terraform, facilitando la creación de instancias EC2 en distintos entornos.

## Recursos creados

- AWS EC2 Instance
- Data Source AWS AMI Ubuntu 24.04

## Variables

| Variable | Descripción |
|-----------|------------|
| instance_type | Tipo de instancia EC2 |
| subnet_id | ID de la subnet donde se desplegará la instancia |
| security_group_id | ID del Security Group asociado |
| instance_name | Nombre de la instancia |

## Outputs

| Output | Descripción |
|----------|------------|
| instance_id | ID de la instancia EC2 |
| instance_ip | Dirección IP pública de la instancia |

## Ejemplo de uso

```hcl
module "computo" {
  source = "./modules/computo"

  instance_type    = "t2.micro"
  subnet_id        = "subnet-xxxxxxxx"
  security_group_id = "sg-xxxxxxxx"
  instance_name    = "AUY1105-duocapp-ec2"
}
```

## Dependencias

- Terraform >= 1.0.0
- AWS Provider ~> 6.0
- Una VPC y subnet previamente creadas
- Un Security Group previamente creado