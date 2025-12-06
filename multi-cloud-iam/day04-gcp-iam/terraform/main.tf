resource "google_service_account" "sa" {
  account_id   = "mc-iam-sa"
  display_name = "Multi-Cloud IAM SA"
}
resource "google_project_iam_member" "viewer" {
  project = var.gcp_project_id
  role    = "roles/viewer"
  member  = "serviceAccount:${google_service_account.sa.email}"
}
resource "google_project_service" "apis" {
  for_each = toset(["compute.googleapis.com","iam.googleapis.com","artifactregistry.googleapis.com"])
  service = each.key
}
