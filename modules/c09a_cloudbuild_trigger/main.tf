
data "google_project" "project" {}

resource "google_cloudbuild_trigger" "service-account-trigger" {

  project     = var.project_id
  name        = var.trigger_name

  trigger_template {
    branch_name = var.branch_pattern
    repo_name   = var.repository_name
  }

  service_account = google_service_account.cloudbuild_service_account.id
  filename        = var.build_config_file

  depends_on = [
    google_project_iam_member.act_as,
    google_project_iam_member.logs_writer
  ]
}


resource "google_project_iam_member" "act_as" {
  project = data.google_project.project.project_id
  role    = "roles/iam.serviceAccountUser"
  member  = "serviceAccount:${var.service_account_email}"
}

resource "google_project_iam_member" "logs_writer" {
  project = data.google_project.project.project_id
  role    = "roles/logging.logWriter"
  member  = "serviceAccount:${var.service_account_email}"
}