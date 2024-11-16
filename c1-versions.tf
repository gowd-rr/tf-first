terraform {
  backend "s3" {
    bucket         = "my-first-bcket-one"
    key            = "dev/terrafrom.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-id"
  }
  required_version = "~> 1.9"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.1.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = var.my_region
}

# provider "aws" {
#   profile = "default"
#   region  = "us-east-2"
#   alias   = "aws-us-east-2"
# }