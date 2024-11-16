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


# (2) create a service account for CICD
module "my_service_account" {
  source               = "../modules/b03_service_account"
  project_id           = var.project_id
  service_account_name = var.cicd_sa_name
  display_name         = "My Terraform Service Account"
  description          = "This service account is used for CI/CD operations"

  roles = var.cicd_sa_role_list
}


