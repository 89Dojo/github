resource "github_repository" "github" {
  name        = "github"
  description = "github repository"

  has_issues    = true
  has_wiki      = true
  has_downloads = true
}

resource "github_issue_label" "github_bug" {
  repository = "github"
  name       = "Bug"
  color      = "FF0000"
}

resource "github_issue_label" "github_feature" {
  repository = "github"
  name       = "Feature"
  color      = "00FF00"
}
