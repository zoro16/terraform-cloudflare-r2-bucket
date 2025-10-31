variable "create_r2_buckets" {
  description = "Conditionally create Cloudflare R2 bucket resource(s)"
  type        = bool
  default     = false
}

variable "cloudflare_account_id" {
  description = "Cloudflare account ID."
  type        = string
}

variable "bucket_location" {
  description = "Cloudflare R2 Bucket location"
  type        = string
  default     = "WEUR"
}

variable "bucket_storage_class" {
  description = "Cloudflare R2 bucket storage class."
  type        = string
  default     = "Standard"
}

variable "bucket_names" {
  description = "List of Cloudflare R2 buckets to be created."
  type        = list(string)
  default     = [""]
}
