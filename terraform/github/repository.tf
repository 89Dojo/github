resource "github_repository" "github" {
  name        = "github"
  description = "github repository"

  has_issues    = true
  has_wiki      = true
  has_downloads = true
}
