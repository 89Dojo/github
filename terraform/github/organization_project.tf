resource "github_organization_project" "org_project" {
  name = "89Dojo milestone"
  body = "89Dojo milestone"
}

resource "github_project_column" "todo" {
  project_id = github_organization_project.org_project.id
  name       = "ToDo"
}

resource "github_project_column" "considering" {
  project_id = github_organization_project.org_project.id
  name       = "Considering"
}

resource "github_project_column" "doing" {
  project_id = github_organization_project.org_project.id
  name       = "Doing"
}

resource "github_project_column" "wait_review" {
  project_id = github_organization_project.org_project.id
  name       = "Wait review"
}

resource "github_project_column" "Done" {
  project_id = github_organization_project.org_project.id
  name       = "Done"
}