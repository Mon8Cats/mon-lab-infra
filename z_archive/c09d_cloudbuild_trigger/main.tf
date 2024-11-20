resource "google_cloudbuild_trigger" "github_trigger" {
  name = "github-trigger111"
  location = "global" 


  github { 
    owner = "Mon8Cats" 
    name = "mon-lab-infra" 
    push { 
      branch = "main" 
      } 
  }

  filename = "cloudbuild.yaml" # This tells the trigger to use the cloudbuild.yaml file in your repository

  service_account = "projects/mon-cloud-lab/serviceAccounts/infra-cicd-sa@mon-cloud-lab.iam.gserviceaccount.com" # Replace with your service account
}

# no error but i can't see trigger
# global trigger


# you need connection1