terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {

  token = "Personal access tokens"
}

resource "github_repository" "terraform_repo" {
  name        = "Terraform_repo"
  description = "My first repo create with terraform"

  visibility = "public"


}



