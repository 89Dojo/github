provider "github" {
  token        = var.github_token
  owner = "89dojo"
}

terraform {
  backend "local" {
    path = "terraform/state/github.tfstate"
  }
}
