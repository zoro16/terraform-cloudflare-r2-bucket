## Description

Terraform module to create Cloudflare R2 buckets. The module only support basic bucket
creation and not other R2 bucket features.


## Usage

```hcl
terraform {
  required_version = ">= 1.5.4"
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = ">= 5"
    }
  }
}

provider "cloudflare" {
  alias = "cloudflare"
  api_token = var.cloudflare_token
}

module "r2-bucket" {
  source = "../../"

  create_r2_buckets     = true
  cloudflare_account_id = var.account_id
  bucket_names          = ["test-bucket1", "test-bucket2"]
  bucket_location       = "WEUR"
  bucket_storage_class  = "Standard"
}

output "created_buckets" {
  description = "List all created Cloudflare R2 buckets."
  value = module.r2-bucket.created_r2_buckets
}
```


<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.4 |
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | >= 5 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | >= 5 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [cloudflare_r2_bucket.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/r2_bucket) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_location"></a> [bucket\_location](#input\_bucket\_location) | Cloudflare R2 Bucket location | `string` | `"WEUR"` | no |
| <a name="input_bucket_names"></a> [bucket\_names](#input\_bucket\_names) | List of Cloudflare R2 buckets to be created. | `list(string)` | <pre>[<br/>  ""<br/>]</pre> | no |
| <a name="input_bucket_storage_class"></a> [bucket\_storage\_class](#input\_bucket\_storage\_class) | Cloudflare R2 bucket storage class. | `string` | `"Standard"` | no |
| <a name="input_cloudflare_account_id"></a> [cloudflare\_account\_id](#input\_cloudflare\_account\_id) | Cloudflare account ID. | `string` | n/a | yes |
| <a name="input_create_r2_buckets"></a> [create\_r2\_buckets](#input\_create\_r2\_buckets) | Conditionally create Cloudflare R2 bucket resource(s) | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_created_r2_buckets"></a> [created\_r2\_buckets](#output\_created\_r2\_buckets) | List all created Cloudflare R2 buckets. |
<!-- END_TF_DOCS -->
