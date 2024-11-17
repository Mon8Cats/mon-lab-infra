output "trigger_name" {
  description = "The name of the Cloud Build trigger"
  value       = google_cloudbuild_trigger.service-account-trigger.name
}

output "trigger_id" {
  description = "The ID of the Cloud Build trigger"
  value       = google_cloudbuild_trigger.service-account-trigger.id
}
