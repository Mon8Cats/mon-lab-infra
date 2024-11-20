
# modules/cloudbuild_trigger/main.tf

resource "google_cloudbuild_trigger" "trigger" {
  name        = var.trigger_name
  filename    = var.build_config_file
  //build_config = var.build_config_file

  github {
    owner = "aaa"
    
  }

  

  service_account =  var.service_account_email
  
}