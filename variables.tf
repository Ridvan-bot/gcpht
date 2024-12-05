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

variable "image" {
  description = "The container image"
  type        = string
  default     = "gcr.io/dev-pohlmanprotean-website/dev-pohlmanprotean-website-image:v0.12.0"
}

variable "imag_name" {
  description = "The container image"
  type        = string
  default     = "dev-pohlmanprotean-website-image-1"
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

variable "custom_domain" {
  description = "The custom domain to map to the Cloud Run service."
  type        = string
  default     = "dev.pohlmanprotean.se."
}

variable "service_id" {
  description = "The ID of the Cloud Run service."
  type        = string
  default     = "locations/europe-west1/namespaces/dev-pohlmanprotean-website/services/dev-pohlmanprotean-website"
}

variable project_name {
  description = "The name of the project in which to create the Cloud Run service."
  type        = string
  default     = "dev-pohlmanprotean-website"
}

variable "service_account_name" {
  description = "The name of the service account to use for the Cloud Run service."
  type        = string
  default     = "1022290610235-compute@developer.gserviceaccount.com"
  
}

variable "container_port" {
  description = "The port on which the container listens."
  type        = number
  default     = 8080
}