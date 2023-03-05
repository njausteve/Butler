module "butler" {
  source                 = "../../repositories"
  repository_name        = "Butler"
  repository_description = "Butler is a centralized repository designed for personal use in managing infrastructure as code (IaC). It provides a platform for storing and versioning Terraform configurations and other infrastructure-related code."
  license_template       = "mit"
  visibility             = "public"
  gitignore_template     = "Terraform"
  has_wiki               = true
  has_issues             = true
  auto_init              = true
  allow_merge_commit     = true
  delete_branch_on_merge = true
  vulnerability_alerts   = true

  required_status_check_strict = true
  require_signed_commits       = true
}
