variable "subnet_id" {
  description = "Subnet ID for the RDS instance"
  type        = string
}

variable "instance_class" {
  description = "Instance class/type for RDS"
  type        = string
}

variable "db_name" {
  description = "Name of the database"
  type        = string
}

variable "db_user" {
  description = "Master username for the RDS instance"
  type        = string
}

variable "db_password" {
  description = "Master password for the RDS instance"
  type        = string
  sensitive   = true
}
