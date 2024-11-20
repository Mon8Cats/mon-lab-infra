resource "google_cloudbuild_trigger" "github_trigger" {
  provider    = google-beta
  project     = var.project_id
  name        = var.trigger_name
  description = "Trigger for GitHub repository"

  github {
    owner = var.github_owner
    name  = var.repository_name
    push {
      branch = var.branch_pattern
    }
  }

  included_files = ["**/*"]
  ignored_files  = ["README.md"]


  filename = var.build_config_file
  service_account = var.service_account_email
}
