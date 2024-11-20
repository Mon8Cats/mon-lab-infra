resource "google_cloudbuild_trigger" "infra_cicd_trigger" {
  provider    = google-beta
  project     = "mon-cloud-lab"
  name        = "infra-cicd-trigger5"
  description = "Infra CICD trigger"
  
  /*
  repository_event_config {
    repository = "projects/mon-cloud-lab/locations/us-central1/connections/github_connection/repositories/mon-lab-infra"

    push {
      branch = "^main$"
    }
  }
  */

  github {
    owner = "your-github-username"
    name  = "mon-lab-infra"
    push {
      branch = "^main$"
    }
  }

  filename = "cloudbuild.yaml"


  service_account = "infra-cicd-sa@mon-cloud-lab.iam.gserviceaccount.com"
}

# get from reverse engineering!