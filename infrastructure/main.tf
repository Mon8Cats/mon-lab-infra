/* No space around =
export TF_VAR_project_id="mon8cats-cloud-lab"
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

  depends_on   = [module.cicd_service_account]
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
