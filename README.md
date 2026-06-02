# AUY1105 - Infraestructura como Código II

## Descripción

Este repositorio contiene la implementación de infraestructura como código utilizando Terraform. El proyecto fue refactorizado para utilizar módulos reutilizables de redes y cómputo siguiendo buenas prácticas de documentación, versionado y reutilización de código.

## Objetivos

* Implementar infraestructura en AWS mediante Terraform.
* Desacoplar la infraestructura en módulos reutilizables.
* Automatizar validaciones de calidad y seguridad mediante GitHub Actions.
* Aplicar políticas de seguridad utilizando OPA.
* Utilizar versionado semántico para la gestión de cambios.

## Tecnologías utilizadas

* Terraform
* AWS
* GitHub Actions
* Checkov
* Open Policy Agent (OPA)

## Estructura del proyecto

```text
.
├── modules
│   ├── redes
│   └── computo
├── .github/workflows
├── policies
├── main.tf
├── variables.tf
├── outputs.tf
├── README.md
└── CHANGELOG.md
```

## Módulo Redes

Permite crear:

* VPC
* Subnet pública
* Security Group

Outputs:

* vpc_id
* subnet_ids
* security_group_id

## Módulo Computo

Permite crear:

* Instancia EC2
* Obtención automática de AMI Ubuntu

Outputs:

* instance_id
* instance_ip

## Ejecución

```bash
terraform init
terraform validate
terraform plan
terraform apply
```

## Integrantes

* Valentina Paz Astudillo Martínez
* Catalina Antonia Peña Mora
