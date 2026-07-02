variable "aws_region" {
  description = "Región donde se desplegarán los recursos"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR de la VPC"
  type        = string
  default     = "10.1.0.0/16"
}

variable "subnet_cidr" {
  description = "CIDR de la subred pública"
  type        = string
  default     = "10.1.1.0/24"
}

variable "allowed_ssh_cidr" {
  description = "Rango de IP permitido para SSH"
  type        = string
  default     = "10.1.0.0/16"
}