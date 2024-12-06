variable "service_name_1" {
  description = "The name of the first Cloud Run service."
  type        = string
  default     = "dev-pohlmanprotean-website"
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

variable "service_account_name" {
  description = "The name of the service account to use for the Cloud Run service."
  type        = string
  default     = "1022290610235-compute@developer.gserviceaccount.com"
  
}

variable "imag_name" {
  description = "The container image"
  type        = string
  default     = "dev-pohlmanprotean-website-image-1"
}

variable "image" {
  description = "The container image"
  type        = string
  default     = "gcr.io/dev-pohlmanprotean-website/dev-pohlmanprotean-website-image:v0.12.0"
}

variable "container_port" {
  description = "The port on which the container listens."
  type        = number
  default     = 8080
}

