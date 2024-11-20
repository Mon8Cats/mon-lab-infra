/* No space around =
export TF_VAR_project_id="mon-tea-lab"
export TF_VAR_project_number="699389444489"
export TF_VAR_region="us-central1"
echo $TF_VAR_project_id
echo $TF_VAR_region
*/



pre_api_list   = [
    "cloudresourcemanager.googleapis.com", # or use gcloud, cloud console?
    "storage.googleapis.com",
]

bucket_name = "montealab-tf-backend" # globally unique
