# AUY1105 - Infraestructura como Código II

## Evaluación Parcial N°3: Gestión avanzada de recursos de Terraform

## Descripción

Este repositorio contiene la implementación de infraestructura como código utilizando **Terraform** sobre **Amazon Web Services (AWS)**. El proyecto está organizado mediante módulos reutilizables y sigue buenas prácticas de documentación, modularización y gestión de infraestructura.

En esta evaluación se incorporan técnicas avanzadas para la administración del estado de Terraform, permitiendo recuperar, sincronizar y mantener la infraestructura mediante el uso de comandos avanzados de Terraform CLI.

---

# Objetivos

- Implementar infraestructura en AWS utilizando Terraform.
- Organizar el código mediante módulos reutilizables.
- Mantener una estructura de proyecto escalable utilizando ambientes separados.
- Gestionar correctamente el estado de Terraform.
- Aplicar comandos avanzados como:
  - `terraform import`
  - `terraform state`
  - `terraform refresh`
  - `terraform taint`
  - `terraform untaint`
  - `terraform state rm`
- Mantener la infraestructura sincronizada con el estado.

---

# Tecnologías utilizadas

- Terraform
- Amazon Web Services (AWS)
- Git
- GitHub
- GitHub Actions
- Checkov
- Open Policy Agent (OPA)

---

# Estructura del proyecto

```text
.
├── environments
│   ├── dev
│   ├── staging
│   └── prod
│
├── modules
│   ├── redes
│   └── computo
│
├── policies
├── .github
│   └── workflows
├── main.tf
├── providers.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
├── README.md
└── CHANGELOG.md
```

---

# Módulo Redes

Este módulo implementa la infraestructura de red necesaria para el despliegue de la aplicación.

### Recursos creados

- VPC
- Subred pública
- Security Group

### Outputs

- `vpc_id`
- `subnet_ids`
- `security_group_id`

---

# Módulo Cómputo

Este módulo implementa la infraestructura de cómputo.

### Recursos creados

- Instancia EC2
- Obtención automática de la última AMI Ubuntu disponible

### Outputs

- `instance_id`
- `instance_ip`

---

# Comandos principales

```bash
terraform init

terraform validate

terraform plan

terraform apply
```

---

# Gestión avanzada del estado

Durante esta evaluación se utilizarán los siguientes comandos de Terraform CLI:

```bash
terraform state list

terraform state show

terraform import

terraform refresh

terraform taint

terraform untaint

terraform state rm
```

---

# Buenas prácticas implementadas

- Modularización del código mediante módulos reutilizables.
- Separación de proveedores en `providers.tf`.
- Variables globales centralizadas.
- Organización por ambientes (`dev`, `staging` y `prod`).
- Gestión del estado de Terraform.
- Documentación del proyecto.
- Automatización mediante GitHub Actions.
- Validaciones de seguridad con Checkov.
- Políticas de seguridad utilizando Open Policy Agent (OPA).

---

# Integrantes

- **Valentina Paz Astudillo Martínez**
- **Catalina Antonia Peña Mora**