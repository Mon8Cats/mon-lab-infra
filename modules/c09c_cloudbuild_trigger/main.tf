resource "google_cloudbuild_trigger" "simple_trigger" {
  name = "simple-trigger"

  trigger_template {
    repo_name   = "mon-lab-infra"
    branch_name = "main"
  }

  filename = "cloudbuild.yaml" # This tells the trigger to use the cloudbuild.yaml file in your repository

  service_account = "projects/mon-cloud-lab/serviceAccounts/infra-cicd-sa@mon-cloud-lab.iam.gserviceaccount.com" # Replace with your service account
}



