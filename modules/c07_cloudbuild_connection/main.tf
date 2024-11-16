resource "google_cloudbuildv2_connection" "github_connection" {
  provider = google-beta
  name     = connection_name
  location   = var.region

  github {
    
    app_installation_id = var.github_app_installation_id
    personal_access_token_secret_version = "projects/${var.project_id}/secrets/${var.secret_id}/versions/latest"
  }
}