

# common #############################################


# (1) project id
#project_id = "my project id"#"mon8cats-cloud-lab"
#project_number = "650839457214"
#region     = "my region" # "us-central1"
#bucket_name = "mon8cats-lab-tf-backend" # unique




# (2) api list
api_list   = [
    "cloudresourcemanager.googleapis.com",
    "storage.googleapis.com",
    "iam.googleapis.com",
    "cloudbuild.googleapis.com",
    "secretmanager.googleapis.com",
    "compute.googleapis.com", 
    "artifactregistry.googleapis.com",
    "run.googleapis.com",  

    #"iamcredentials.googleapis.com",  
    #"cloudresourcemanager.googleapis.com",
    # Compute Engine API
    # Cloud Run API
    #"cloudfunctions.googleapis.com",   # Cloud Functions API
    #"container.googleapis.com",        # Kubernetes Engine API
    #"appengine.googleapis.com",        # App Engine Admin API
    #"cloudresourcemanager.googleapis.com", # Resource Manager API
    # Add or remove APIs as needed
  ]


# (5) Secret
secret_id_github = "github_token"
secret_id_db_user = "db_user"
secret_id_db_password = "db_password"

# (6) github connection
github_app_installation_id = "55957239"
github_connection_name = "github_connection"

github_account = "Mon8Cats"


# infra ##################################################


#(3) infra cicd service account and roles
cicd_sa_name_infra = "infra-cicd-sa"

cicd_sa_role_list_infra = [
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
wi_pool_id_infra = "infra-cicd-pool-123"
wi_pool_name_infra = "infra-cicd-pool-123"
wi_pool_provider_id_infra = "infra-provider-123"
github_repository_infra      = "Mon8Cats/mon-lab-infra"



github_repo_uri_infra = "https://github.com/Mon8Cats/mon-lab-infra.git"
repo_name_in_gcp_infra = "mon-lab-infra"


github_repo_name_infra = "mon-lab-infra"


#############################################
cicd_sa_name_app = "app-cicd-sa"

cicd_sa_role_list_app = [
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
]

wi_pool_id_app = "app-cicd-pool-123"
wi_pool_name_app = "app-cicd-pool-123"
wi_pool_provider_id_app = "app-provider-123"
github_repository_app      = "Mon8Cats/mon-lab-app"

github_repo_name_app = "mon-lab-app"

github_repo_uri_app = "https://github.com/Mon8Cats/mon-lab-app.git"
repo_name_in_gcp_app = "mon-lab-app"

