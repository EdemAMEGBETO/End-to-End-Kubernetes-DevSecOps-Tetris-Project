terraform {
  # Config partielle : bucket/region/key dans backend.hcl (non versionné)
  # terraform init -backend-config=backend.hcl
  backend "s3" {
    encrypt      = true
    use_lockfile = true
  }
  required_version = ">=1.13.3"
  required_providers {
    aws = {
      version = ">= 6.23.0"
      source  = "hashicorp/aws"
    }
  }
}
