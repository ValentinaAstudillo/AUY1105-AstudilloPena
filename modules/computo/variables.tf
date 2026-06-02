variable "instance_type" {
  description = "Tipo de instancia EC2"
  type        = string
}

variable "subnet_id" {
  description = "ID de la subnet donde se desplegará la instancia"
  type        = string
}

variable "security_group_id" {
  description = "ID del Security Group asociado"
  type        = string
}

variable "instance_name" {
  description = "Nombre de la instancia EC2"
  type        = string
}