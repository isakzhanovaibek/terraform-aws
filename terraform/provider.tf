
provider "aws" {
  region = "eu-central-1"
}


terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "final-project1.0"
    key    = "terraform/terraform.tfstate"
    region = "eu-central-1"
  }
}

