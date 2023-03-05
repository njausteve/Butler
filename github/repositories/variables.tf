variable "repository_name" {
  type        = string
  description = "(Required) The name of the repository."
  default     = ""
}

variable "repository_description" {
  type        = string
  description = "A description of the repository."
  default     = ""
}

variable "delete_branch_on_merge" {
  type        = bool
  description = "Automatically delete head branch after a pull request is merged. Defaults to false."
  default     = false
}

variable "has_issues" {
  type        = bool
  description = "Set to true to enable the GitHub Issues features on the repository."
  default     = false
}

variable "has_wiki" {
  type        = bool
  description = "Set to true to enable the GitHub Wiki features on the repository."
  default     = false
}

variable "allow_merge_commit" {
  type        = bool
  description = "Set to false to disable merge commits on the repository."
  default     = true
}

variable "visibility" {
  type        = string
  description = "Set to 'private' to hide the repo from public access."
  default     = "public"
}

variable "pattern" {
  type        = string
  description = "Identifies the protection rule pattern. (required)"
  default     = "main"
}

variable "strict" {
  type        = bool
  description = "(Optional) Require branches to be up to date before merging"
  default     = false
}

variable "gitignore_template" {
  type        = string
  description = "(Optional) Use the name of the template without the extension"
  default     = ""
}

variable "auto_init" {
  type        = bool
  description = "(Optional) Set to true to produce an initial commit in the repository."
  default     = false
}

variable "license_template" {
  type        = string
  description = "(Optional) Use the name of the template without the extension."
  default     = "mit"
}

variable "vulnerability_alerts" {
  type        = bool
  description = "(Optional) - Set to true to enable security alerts for vulnerable dependencies. Enabling requires alerts to be enabled on the owner level."
  default     = false
}

variable "require_signed_commits" {
  type        = bool
  description = "(Optional) Boolean, setting this to true requires all commits to be signed with GPG."
  default     = false
}

variable "required_status_check_strict" {
  type        = bool
  description = "(Optional) Require branches to be up to date before merging"
  default     = false
}

variable "required_status_check_contexts" {
  type        = list(string)
  description = "(Optional) The list of status checks to require in order to merge into this branch. No status checks are required by default."
  default     = []
}
