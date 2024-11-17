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

# (5) secrete manager
module "github_token_secret" {
  source              = "../modules/c05_secret_manager"
  project_id          = var.project_id
  secret_id         = var.github_secret_id
}

module "github_token_secret_access2" {
  source              = "../modules/c06_secret_access"
  secret_id = var.github_secret_id
  service_account_email = local.cloud_build_service_account_email
}


# github connection
module "github_connection" {
  source = "../modules/c07_cloudbuild_connection"

  project_id               = var.project_id
  region                   = var.region
  github_app_installation_id = var.github_app_installation_id
  connection_name = var.github_connection_name
  secret_id = var.github_secret_id

  depends_on   = [module.github_token_secret_access2]
}

module "github_connection" {
  source = "../modules/d11_cicd_pipeline_wrapper"

  project_id = var.project_id
  region = var.region
  cicd_sa_name = var.infra_cicd_sa_name
  cicd_sa_role_list = var.infra_cicd_sa_role_list
  wi_pool_id = var.infra_wi_pool_id
  wi_pool_name = var.infra_wi_pool_name
  wi_pool_provider_id = var.infra_wi_pool_provider_id
  github_repository = var.infra_github_repository
  secret_id = var.github_secret_id
  parent_connection = module.github_connection.connection_name
  name_gcp_repo = var.repo_name_in_gcp_infra
  remote_uri_repo = var.github_repo_uri_infra

  depends_on   = [module.github_connection]
}

