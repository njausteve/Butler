resource "github_repository" "repository" {
  name                   = var.repository_name
  description            = var.repository_description
  delete_branch_on_merge = var.delete_branch_on_merge
  has_issues             = var.has_issues
  has_wiki               = var.has_wiki
  auto_init              = var.auto_init
  allow_merge_commit     = var.allow_merge_commit
  visibility             = var.visibility
  gitignore_template     = var.gitignore_template
  license_template       = var.license_template
  vulnerability_alerts   = var.vulnerability_alerts
}

resource "github_branch_protection" "repository" {
  repository_id          = var.repository_name
  pattern                = var.pattern
  require_signed_commits = var.require_signed_commits

  required_status_checks {
    strict   = var.required_status_check_strict
    contexts = var.required_status_check_contexts
  }
}
