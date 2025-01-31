
terraform { /* Terraform block */
  required_providers {
    aws = {  /* Required provider block */
      source  = "hashicorp/aws"  /* Source of the provider */
      version = "5.84.0"  /* Version of the provider */
    }
  }
}

provider "aws" { /* Provider block */
  # Configuration options
  region = "us-east-1"  /* Region where the resource will be created */
}