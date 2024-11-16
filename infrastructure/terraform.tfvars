


# (1) project id
#project_id = "my project id"#"mon8cats-cloud-lab"
#project_number = "650839457214"
#region     = "my region" # "us-central1"
#bucket_name = "mon8cats-lab-tf-backend" # unique


# (2) api list
api_list   = [
    "cloudresourcemanager.googleapis.com", # to manage GCP resources
    "storage.googleapis.com",
    "iam.googleapis.com", # to create service account


    #"iamcredentials.googleapis.com",
    #"cloudbuild.googleapis.com",
    #"artifactregistry.googleapis.com",
    #"secretmanager.googleapis.com",
    #"cloudresourcemanager.googleapis.com",

    #"compute.googleapis.com",          # Compute Engine API
    #"run.googleapis.com",              # Cloud Run API
    #"cloudfunctions.googleapis.com",   # Cloud Functions API
    #"container.googleapis.com",        # Kubernetes Engine API
    #"appengine.googleapis.com",        # App Engine Admin API
    #"cloudresourcemanager.googleapis.com", # Resource Manager API
    # Add or remove APIs as needed
  ]


#(3) service acaccount and roles
cicd_sa_name = "infra-cicd-sa"

cicd_sa_role_list = [
  "roles/cloudbuild.builds.builder",
  #"roles/source.reader",
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
  #"roles/secretmanager.secretAccessor"
  #"roles/compute.subnetworkAdmin"
  #"roles/secretmanager.admin",
  #"roles/secretmanager.secretAccessor",
  #"roles/secretmanager.secretCreator"
]

# (4) Workload Identity
wi_pool_id = "app-github-cicd-pool"
wi_pool_name = "app-github-cicd-pool"
wi_pool_provider_id = "app-github-provider"
github_repository      = "Mon8Cats/mon-lab-infra"
