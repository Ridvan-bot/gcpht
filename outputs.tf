output "service_1_url" {
  value       = google_cloud_run_service.service_1.status[0].url
  description = "The URL of the first Cloud Run service."
}

output "service_2_url" {
  value       = google_cloud_run_service.service_2.status[0].url
  description = "The URL of the second Cloud Run service."
}

# Kommentera ut eller ta bort denna output-variabel
# output "service_url" {
#   value = google_cloud_run_service.default.status[0].url
#   description = "The URL of the Cloud Run service."
# }