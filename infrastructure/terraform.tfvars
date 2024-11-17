


# (1) project id
#project_id = "my project id"#"mon8cats-cloud-lab"
#project_number = "650839457214"
#region     = "my region" # "us-central1"
#bucket_name = "mon8cats-lab-tf-backend" # unique


# (2) api list
api_list   = [
    "cloudresourcemanager.googleapis.com", # manually enabled
    "storage.googleapis.com",
    "iam.googleapis.com", # to create service account
    "cloudbuild.googleapis.com",
    "secretmanager.googleapis.com", # manually enabled

    #"iamcredentials.googleapis.com",
    #"cloudbuild.googleapis.com",
    #"artifactregistry.googleapis.com",
    
    #"cloudresourcemanager.googleapis.com",

    #"compute.googleapis.com",          # Compute Engine API
    #"run.googleapis.com",              # Cloud Run API
    #"cloudfunctions.googleapis.com",   # Cloud Functions API
    #"container.googleapis.com",        # Kubernetes Engine API
    #"appengine.googleapis.com",        # App Engine Admin API
    #"cloudresourcemanager.googleapis.com", # Resource Manager API
    # Add or remove APIs as needed
  ]


#(3) infra cicd service account and roles
infra_cicd_sa_name = "infra-cicd-sa"

infra_cicd_sa_role_list = [
  "roles/cloudbuild.builds.editor",
  "roles/storage.admin",
  "roles/secretmanager.secretAccessor",
  "roles/iam.serviceAccountUser",
  "roles/resourcemanager.projectIamAdmin",
  "roles/viewer",
  "roles/compute.admin",
  "roles/iam.serviceAccountKeyAdmin",
  "roles/compute.networkAdmin",
  "roles/source.reader",
  "roles/cloudbuild.builds.builder",



  #"roles/cloudbuild.builds.builder",

  #"roles/secretmanager.secretAccessor",
  
  #"roles/artifactregistry.reader",
  #"roles/artifactregistry.writer",
  #"roles/artifactregistry.admin",
  #"roles/storage.admin",
  #"roles/run.admin",
  #"roles/iam.workloadIdentityPoolAdmin",
  #"roles/iam.serviceAccountViewer",
  #"roles/container.developer",
  #"roles/iam.serviceAccountUser",
  #"roles/compute.networkAdmin",
  #"roles/compute.securityAdmin",
  #"roles/iam.serviceAccountAdmin",
  #"roles/serviceusage.serviceUsageAdmin",
  #"roles/cloudsql.admin",
  #"roles/viewer",
  
  #"roles/compute.subnetworkAdmin"
  #"roles/secretmanager.admin",
  #"roles/secretmanager.secretAccessor",
  #"roles/secretmanager.secretCreator"
]

# (4) Workload Identity
infra_wi_pool_id = "infra-cicd-pool"
infra_wi_pool_name = "infra-cicd-pool"
infra_wi_pool_provider_id = "infra-provider"
infra_github_repository      = "Mon8Cats/mon-lab-infra"




# (5) Secret
github_secret_id = "github_token"

# (6) github connection
github_app_installation_id = "55957239"
github_connection_name = "github_connection"

github_repo_uri_infra = "https://github.com/Mon8Cats/mon-lab-infra.git"
repo_name_in_gcp_infra = "mon-lab-infra"

github_account = "Mon8Cats"
github_repo_name_infra = "mon-lab-infra"