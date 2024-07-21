variable "aws_region" {
  default = "ap-southeast-2"
}

variable "my_ip" {
  description = "Your IP address"
  type        = string
  sensitive   = true
}

variable "vpc_cidr_block" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr_block" {
  description = "CIDR block for public subnet"
  type        = string
  default     = "10.0.1.0/24"
}
