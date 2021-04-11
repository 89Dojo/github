resource "github_team" "admin" {
  name    = "Admin"
  privacy = "closed"
}

resource "github_team" "developer" {
  name    = "Developer"
  privacy = "closed"
}