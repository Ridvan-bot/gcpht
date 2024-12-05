output "service_1_url" {
  value       = google_cloud_run_service.dev-pohlmanprotean-website.status[0].url
  description = "The URL of the first Cloud Run service."
}

# output "service_url" {
#   value = google_cloud_run_service.default.status[0].url
#   description = "The URL of the Cloud Run service."
# }