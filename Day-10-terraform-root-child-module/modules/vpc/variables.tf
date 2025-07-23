variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  type        = string
}

variable "az" {
  description = "Availability zone for the subnet"
  type        = string
}
