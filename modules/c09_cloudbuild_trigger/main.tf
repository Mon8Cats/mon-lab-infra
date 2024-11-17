resource "google_cloudbuildv2_trigger" "github_trigger" {
  provider    = google-beta
  project     = var.project_id
  name        = var.trigger_name
  description = "Trigger for linked GitHub repository"

  # Use the repository block for Cloud Build V2
  repository {
    repository = var.repository_id
    push {
      branch = var.branch_pattern
    }
  }

  build {
    filename = var.build_config_file
  }

  service_account = var.service_account_email
}
