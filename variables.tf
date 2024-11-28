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

variable "service_name_1" {
  description = "The name of the first Cloud Run service."
  type        = string
  default     = "dev-pohlmanprotean-website"
}

variable "service_name_2" {
  description = "The name of the second Cloud Run service."
  type        = string
  default     = "dev-pohlmanprotean-website-2"
}

variable "image" {
  description = "The container image"
  type        = string
  default     = "gcr.io/dev-pohlmanprotean-website/dev-pohlmanprotean-website-image@sha256:2c9dad3a8aa6ec3b2c42ef7f025f5a2ec5de996c4757e99fc01549c1f7caf482"
}

variable "credentials_file" {
  description = "The path to the service account key file."
  type        = string
  default     = "service-account.json"
}

variable "namespace_1" {
  description = "The namespace to apply to the first Cloud Run service."
  type        = string
  default     = "dev-pohlmanprotean-website"
}

variable "namespace_2" {
  description = "The namespace to apply to the second Cloud Run service."
  type        = string
  default     = "dev-pohlmanprotean-website-2"
}

variable "custom_domain" {
  description = "The custom domain to map to the Cloud Run service."
  type        = string
  default     = "dev.pohlmanprotean.se."
}