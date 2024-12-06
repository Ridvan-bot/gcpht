output "service_1_url" {
  value       = google_cloud_run_service.dev-pohlmanprotean-website.status[0].url
  description = "The URL of the first Cloud Run service."
}

output "service_name" {
  value       = google_cloud_run_service.dev-pohlmanprotean-website.name
  description = "The name of the Cloud Run service."
}

output "service_location" {
  value       = google_cloud_run_service.dev-pohlmanprotean-website.location
  description = "The location of the Cloud Run service."
}