terraform {
  required_version = "~> 0.13"

  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "~> 0"
    }

    github = {
      source  = "hashicorp/github"
      version = "~> 4"
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
