# Generated by Terragrunt. Sig: nIlQXj57tbuaRZEa
terraform {
  backend "local" {
    path = ".terraform/terraform.tfstate"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}
