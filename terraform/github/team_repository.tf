resource "github_team_repository" "team_admin_github" {
  team_id    = github_team.admin.id
  repository = github_repository.github.id
  permission = "push"
}
