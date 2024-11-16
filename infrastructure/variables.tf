
# project info
variable "project_id" {
  description = "Project ID for the GCP project"
  type        = string
}

variable "region" {
  description = "Region in which GCP Resources to be created"
  type = string
  default = "us-east1"
}


# apis
variable "api_list" {
  type        = list(string)
  description = "A list of APIs"
  #default     = ["value1", "value2", "value3"]  # optional default value
}


# service account
variable "cicd_sa_name" {
  description = "The ID of the service account to create (must be unique within the project)"
  type        = string
}

variable "cicd_sa_role_list" {
  type        = list(string)
  description = "A list of APIs"
  #default     = ["value1", "value2", "value3"]  # optional default value
}

# workload identity

variable "wi_pool_id" {
  description = "The Workload Identity Pool Id"
  type        = string
}

variable "wi_pool_name" {
  description = "The Workload Identity Pool Name"
  type        = string
}

variable "wi_pool_provider_id" {
  description = "The Workload Identity Provider Id"
  type        = string
}

variable "github_repository" {
  description = "The region for the resources"
  type        = string
}
