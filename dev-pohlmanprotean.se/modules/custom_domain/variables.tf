variable "custom_domain" {
  description = "The custom domain to map to the Cloud Run service."
  type        = string
  default     = "dev.pohlmanprotean.se."
}

variable "region" {
  description = "The region in which to create the Cloud Run service."
  type        = string
  default     = "europe-west1"
}

variable "project_id" {
  description = "The ID of the project in which to create the Cloud Run service."
  type        = string
  default     = "dev-pohlmanprotean-website"
}

variable "route_name" {
  description = "The name of the Cloud Run service."
  type        = string
  default     = "dev-pohlmanprotean-website"
}

variable "service_name" {
  description = "The name of the Cloud Run service."
  type        = string
}

variable "service_name_1" {
  description = "The name of the first Cloud Run service."
  type        = string
  default     = "dev-pohlmanprotean-website"
}