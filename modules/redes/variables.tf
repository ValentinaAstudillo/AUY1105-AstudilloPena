variable "vpc_cidr" {
  description = "CIDR block para la VPC"
  type        = string
}

variable "vpc_name" {
  description = "Nombre de la VPC"
  type        = string
}

variable "subnet_cidr" {
  description = "CIDR block para la subnet"
  type        = string
}

variable "subnet_name" {
  description = "Nombre de la subnet"
  type        = string
}