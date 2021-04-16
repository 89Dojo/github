//resource "github_branch_protection" "github_master" {
//  enforce_admins = false
//  required_status_checks {}
//
//  required_pull_request_reviews {
//    dismiss_stale_reviews = false
//  }
//  pattern = "main"
//  repository_id = github_repository.github.id
//}

# resource "github_branch_protection_v3" "github_main" {
#   repository     = github_repository.github.name
#   branch         = "main"

#   restrictions {
#     users = ["tubone24", "GitHubActions"]
#   }
# }
