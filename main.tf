provider "google" {
  project     = var.project_id
  region      = var.region
  credentials = file(var.credentials_file)
}

locals {
  custom_domain_name = trim(var.custom_domain, ".")
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
      }
    }
  }

  traffic {
    percent         = 50
    latest_revision = true
  }

  traffic {
    percent         = 50
    revision_name   = "previous-revision-name"
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
