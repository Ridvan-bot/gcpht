variable "project_id" {
  description = "The ID of the project in which to create the Cloud Run service."
  type        = string
  default = "dev-pohlmanprotean-website"
}

variable "region" {
  description = "The region in which to create the Cloud Run service."
  type        = string
  default     = "europe-west1"
}

variable "service_name" {
  description = "The name of the Cloud Run service."
  type        = string
  default     = "dev-pohlmanprotean-website-bu"
}

variable "image" {
  description = "The container image to deploy."
  type        = string
  default = "gcr.io/dev-pohlmanprotean-website/dev-pohlmanprotean-website-image@sha256:2c9dad3a8aa6ec3b2c42ef7f025f5a2ec5de996c4757e99fc01549c1f7caf482"
}

variable "credentials_file" {
  description = "The path to the service account key file."
  type        = string
  default     = "service-account.json"
}