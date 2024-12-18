variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "trigger_name" {
  description = "The name of the Cloud Build trigger"
  type        = string
}

variable "github_owner" {
  description = "The GitHub username or organization"
  type        = string
}

variable "repository_name" {
  description = "The name of the GitHub repository"
  type        = string
}

variable "branch_pattern" {
  description = "The branch pattern to trigger builds (e.g., '^main$', '.*' for all branches)"
  type        = string
  default     = "^main$"
}

variable "build_config_file" {
  description = "The path to the cloudbuild.yaml file"
  type        = string
  default     = "cloudbuild.yaml"
}

variable "service_account_email" {
  description = "The email of the service account to use for the build trigger"
  type        = string
}

