resource "google_cloudbuild_trigger" "infra_cicd_trigger" {
  project     = "mon-cloud-lab"
  name        = "infra-cicd-trigger"
  description = "Infra CICD trigger"

  repository_event_config {
    repository = "projects/mon-cloud-lab/locations/us-central1/connections/github_connection/repositories/mon-lab-infra"

    push {
      branch = "^main$"
    }
  }

  filename = "cloudbuild.yaml"

  /*
  build {
    filename = "cloudbuild.yaml"
  }
  */

  service_account = "infra-cicd-sa@mon-cloud-lab.iam.gserviceaccount.com"
}
