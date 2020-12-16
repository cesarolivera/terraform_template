resource "google_storage_bucket" "gcs_sandbox" {
  name          = "${var.project_region}_gcs-sandbox_${var.environment}"
  storage_class = "REGIONAL"
  location      = var.project_region
 
  uniform_bucket_level_access = true

#   lifecycle {
#     prevent_destroy = true
#   }
}