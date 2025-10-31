resource "cloudflare_r2_bucket" "this" {
  for_each      = var.create_r2_buckets ? toset(var.bucket_names) : []
  name          = each.value
  account_id    = var.cloudflare_account_id
  location      = var.bucket_location
  storage_class = var.bucket_storage_class
}
