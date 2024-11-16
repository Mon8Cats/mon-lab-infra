

locals {
  infra_cicd_service_account_email = "${var.infra_cicd_sa_name}@${var.project_id}.iam.gserviceaccount.com"
  #cicd_bucket_name           = "${var.project_id}-cicd-bucket"
}
