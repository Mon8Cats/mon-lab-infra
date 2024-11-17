/* No space around =
export TF_VAR_project_id="mon-cloud-lab"
export TF_VAR_project_number="583630435909"
export TF_VAR_region="us-central1"
echo $TF_VAR_project_id
echo $TF_VAR_region
*/

# (1) enable apis
module "enable_apis" {
  source     = "../modules/a01_enable_apis"
  project_id = var.project_id
  api_services = var.api_list
}



# (3) create a service account for infra CICD
module "infra_cicd_service_account" {
  source               = "../modules/b03_service_account"
  project_id           = var.project_id
  service_account_name = var.infra_cicd_sa_name
  display_name         = "Infra CICD Service Account"
  description          = "This service account is used for Infra CI/CD operations"

  roles = var.infra_cicd_sa_role_list

  depends_on   = [module.enable_apis]
}

# (4) create workload identity pool
module "workloadidentity" {
  source           = "../modules/b04_workload_identity"
  project_id = var.project_id
  wi_pool_id = var.infra_wi_pool_id
  wi_pool_name = var.infra_wi_pool_name
  wi_pool_provider_id = var.infra_wi_pool_provider_id
  github_repository = var.infra_github_repository
  service_account_id = "projects/${var.project_id}/serviceAccounts/${var.infra_cicd_sa_name}@${var.project_id}.iam.gserviceaccount.com"

  depends_on   = [module.infra_cicd_service_account]
}

# (5) secrete manager
module "github_token_secret" {
  source              = "../modules/c05_secret_manager"
  project_id          = var.project_id
  secret_id         = var.github_secret_id
}

module "github_token_secret_access" {
  source              = "../modules/c06_secret_access"
  secret_id = var.github_secret_id
  service_account_email = local.infra_cicd_service_account_email
}


# create token in GitHub (settings/developer settings/Personal access tokens/classic)
# save the token in GCP Secrete manager

#echo -n "tokenvalue" | gcloud secrets versions add github_token \
#  --data-file=- \
#  --project="mon-cloud-lab"
#gcloud secrets versions access latest --secret="github_token" --project="mon-cloud-lab"

module "github_token_secret_access2" {
  source              = "../modules/c06_secret_access"
  secret_id = var.github_secret_id
  service_account_email = local.cloud_build_service_account_email
}

module "github_connection" {
  source = "../modules/c07_cloudbuild_connection"

  project_id               = var.project_id
  region                   = var.region
  github_app_installation_id = var.github_app_installation_id
  connection_name = var.github_connection_name
  secret_id = var.github_secret_id

  depends_on   = [module.github_token_secret_access2]
}

module "github_repository_link" {
  source = "../modules/c08_cloudbuild_repository_link"
  region  = var.region
  repo_name_in_gcp = var.repo_name_in_gcp_infra
  remote_uri = var.github_repo_uri_infra
  parent_connection  = module.github_connection.connection_name

  depends_on   = [module.github_connection]
}


module "github_build_trigger" {
  source = "../modules/c09_cloudbuild_trigger"

  project_id            = var.project_id
  trigger_name          = "github-code-trigger"
  repository_id         = module.github_connection.repository_id
  branch_pattern        = "^main$"
  build_config_file     = "cloudbuild.yaml"
  service_account_email = local.infra_cicd_service_account_email

  depends_on   = [module.github_repository_link]
}