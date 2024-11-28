provider "google" {
  project     = var.project_id
  region      = var.region
  credentials = file(var.credentials_file)
}

locals {
  custom_domain_name = trim(var.custom_domain, ".")
}

locals {
  email_app_pass = file("email_app_pass.txt")
}

resource "google_cloud_run_service" "service_1" {
  name     = var.service_name_1
  location = var.region

  template {
    metadata {
      labels = {
        namespace = var.namespace_1
      }
    }
    spec {
      containers {
        image = var.image
        env {
          name  = "EMAIL_APP_PASS"
          value = local.email_app_pass
        }
        env {
          name  = "EMAIL_TO"
          value = var.email_to
        }
        env {
          name  = "EMAIL_USER"
          value = var.email_user
        }
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }

  timeouts {
    create = "10m"
    update = "10m"
  }
}

resource "google_cloud_run_service" "service_2" {
  name     = var.service_name_2
  location = var.region

  template {
    metadata {
      labels = {
        namespace = var.namespace_2
      }
    }
    spec {
      containers {
        image = var.image
        env {
          name  = "EMAIL_APP_PASS"
          value = local.email_app_pass
        }
        env {
          name  = "EMAIL_TO"
          value = var.email_to
      }
      env {
          name  = "EMAIL_USER"
          value = var.email_user
      }
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }

  timeouts {
    create = "10m"
    update = "10m"
  }
}

resource "google_cloud_run_service_iam_member" "noauth_service_1" {
  service    = google_cloud_run_service.service_1.name
  location   = google_cloud_run_service.service_1.location
  role       = "roles/run.invoker"
  member     = "allUsers"
}

resource "google_cloud_run_service_iam_member" "noauth_service_2" {
  service    = google_cloud_run_service.service_2.name
  location   = google_cloud_run_service.service_2.location
  role       = "roles/run.invoker"
  member     = "allUsers"
}

resource "google_cloud_run_domain_mapping" "custom_domain_mapping" {
  location = var.region
  name     = local.custom_domain_name
  metadata {
    namespace = var.project_id
  }
  spec {
    route_name = google_cloud_run_service.service_1.name
  }
}