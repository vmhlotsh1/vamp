terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

provider "github" {
  token = "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"
}

resource "github_repository" "vamp" {
  name        = "vamp"
  description = "Bleed it out"

  visibility = "public"
}

resource "github_repository_collaborator" "a_repo_collaborator" {
  repository = "vamp"
  username   = "samcolson4"
  permission = "admin"
}