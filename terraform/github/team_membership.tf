resource "github_team_membership" "team_admin_tubone24" {
  team_id  = github_team.admin.id
  username = "tubone24"
  role     = "maintainer"
}

resource "github_team_membership" "team_developer_tubone24" {
  team_id  = github_team.developer.id
  username = "tubone24"
  role     = "maintainer"
}