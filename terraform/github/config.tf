provider "github" {
  token        = var.github_token
  organization = "89dojo"
}

terraform {
  backend "local" {
    path = "terraform/state/github.tfstate"
  }
}
