resource "github_team" "admin" {
  name    = "Admin"
  description = "Admin"
  privacy = "closed"
}

resource "github_team" "developer" {
  name    = "Developer"
  description = "developer"
  privacy = "closed"
}

resource "github_team" "readonly"
  name        = "Readoly"
  description = "readonly"
  privacy = "closed"
}
