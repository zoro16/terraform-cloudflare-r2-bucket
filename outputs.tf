output "created_r2_buckets" {
  description = "List all created Cloudflare R2 buckets."
  value       = [for k in cloudflare_r2_bucket.this : k.name]
}
