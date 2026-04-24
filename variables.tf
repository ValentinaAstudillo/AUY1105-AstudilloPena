variable "aws_region" {
  description = "Región AWS Academy"
  type        = string
  default     = "us-east-1"
}

variable "allowed_ssh_cidr" {
  description = "CIDR permitido para SSH"
  type        = string
  default     = "10.1.0.0/16"
}