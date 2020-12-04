terraform {
  required_version = "~> 0.14.0"

  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "~> 0.23"
    }
  }

    backend "remote" {
      hostname     = "app.terraform.io"
      organization = "dednets"

      workspaces {
        prefix = "aws-network-"
      }
    }
}
