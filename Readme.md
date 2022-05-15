# Terraform module - S3 bucket
## Example
``` hcl
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.14.0"
    }
  }
}

provider "aws" {
  alias  = "frankfurt"
  region = "eu-central-1"
}

module "bucket" {
  providers = {
    aws = aws.frankfurt
  }
  source = "git::https://github.com/rbjoergensen/tf-s3-bucket.git?ref=v1.0.0"
  bucket_name = "callofthevoid-test-bucket"
}
```