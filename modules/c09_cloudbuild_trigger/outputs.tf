output "trigger_name" {
  description = "The name of the Cloud Build trigger"
  value       = google_cloudbuildv2_trigger.github_trigger.name
}

output "trigger_id" {
  description = "The ID of the Cloud Build trigger"
  value       = google_cloudbuildv2_trigger.github_trigger.id
}