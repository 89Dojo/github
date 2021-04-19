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

resource "github_repository" "_89Dojo_github_io" {
  name        = "89Dojo.github.io"
  description = "89Dojo.github.io"

  has_issues    = true
  has_wiki      = true
  has_downloads = true
  
  pages {
    source {
      branch = "gh-pages"
    }
  }
}
