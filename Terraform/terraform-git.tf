terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

provider "github" {
  token = var.token
}

variable "token" {
  type    = string
  default = "ghp_xxxxxx" # Your Github personal access token
}

resource "github_repository" "test-repo" {
  name        = "test-repo"
  description = "Test repo from Terraform"
  visibility = "public"
  template {
    owner      = "Vinay"
    repository = "CDD Repo"
  }
}