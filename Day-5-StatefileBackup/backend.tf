terraform {
  required_version = ">= 1.10.0"

  backend "s3" {
    bucket       = "terraformstatefilebackupshaik"
    key          = "terraform.tfstate"
    region = "us-east-1"
  }
}