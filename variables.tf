variable "aws_region" {
  description = "Región AWS"
  type        = string
  default     = "us-east-1"
}

variable "allowed_ssh_cidr" {
  description = "CIDR permitido para SSH"
  type        = string
  default     = "10.1.0.0/16"
}

variable "vpc_cidr" {
  description = "CIDR de la VPC"
  type        = string
  default     = "10.1.0.0/16"
}

variable "subnet_cidr" {
  description = "CIDR de la subnet"
  type        = string
  default     = "10.1.1.0/24"
}