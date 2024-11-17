resource "google_cloudbuildv2_repository" "my-repository" {
  location = var.region
  name = var.repo_name_in_gcp
  parent_connection = var.parent_connection
  remote_uri = var.remote_uri
}
