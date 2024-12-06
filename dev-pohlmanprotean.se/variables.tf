variable "project_id" {
  description = "The ID of the project in which to create the Cloud Run service."
  type        = string
  default     = "dev-pohlmanprotean-website"
}

variable "region" {
  description = "The region in which to create the Cloud Run service."
  type        = string
  default     = "europe-west1"
}

variable "credentials_file" {
  description = "The path to the service account key file."
  type        = string
  default     = "service-account.json"
}
