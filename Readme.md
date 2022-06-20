# Terraform module - S3 bucket
Automatic versioning of a Terraform module with an example of how to import it.
## Example
In the module we specify v1 to use the latest build from v1.x.x.<br/>
We could also have specified a specific version such as v1.0.7 to log down the version to that tag.
``` terraform
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
  source = "git::https://github.com/rbjoergensen/terraform-s3.git?ref=v1"
  bucket_name = "callofthevoid-test-bucket"
}
```
