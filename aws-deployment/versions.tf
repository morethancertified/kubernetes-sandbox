terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = var.region
  profile = var.credentials_profile
  default_tags {
    tags = {
      Environment = var.environment_tag
      Project     = var.project_tag
    }
  }
}