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
  default     = "gcr.io/dev-pohlmanprotean-website/dev-pohlmanprotean-website-image:latest"
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

variable "email_to" {
  description = "The recipient email address."
  type        = string
  default = "robin.pohlman@gmail.com"
}

variable "email_user" {
  description = "The user email address."
  type        = string
  default = "robin.pohlman@gmail.com"
}
