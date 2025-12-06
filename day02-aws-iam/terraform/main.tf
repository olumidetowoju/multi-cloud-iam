terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_iam_user" "demo_user" {
  name = "mc-iam-demo-user"
  tags = {
    Project = "multi-cloud-iam"
    Owner   = "olumide"
  }
}

output "iam_user_name" {
  value = aws_iam_user.demo_user.name
}
