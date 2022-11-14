variable "project_gcp_sa" {}

provider "google" {
  project     = var.project_id
  credentials = var.project_gcp_sa
}
provider "google-beta" {
  project     = var.project_id
  credentials = var.project_gcp_sa
}
