variable "ami_id" {
  description = "inserting ami id"
  type = string
  default = "ami-05ffe3c48a9991133"
}
variable "instance_type" {
  type = string
  default = "t2.medium"
}