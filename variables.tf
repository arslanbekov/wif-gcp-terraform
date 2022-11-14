variable "project_id" {
  default = "my-gcp-project"
}
variable "pool_id" {
  default = "github-actions"
}
variable "pool_display_name" {
  default = "GitHub Actions pool"
}
variable "pool_description" {
  default = "Workload Identity Pool managed by Terraform"
}
variable "provider_id" {
  default = "github-actions"
}
variable "provider_display_name" {
  default = "GitHub Actions provider"
}
variable "provider_description" {
  default = "Workload Identity Pool Provider managed by Terraform"
}
variable "attribute_condition" {
  description = "Workload Identity Pool Provider attribute condition expression"
  default     = "attribute.repository_owner==\"arslanbekov\""
}
variable "attribute_mapping" {
  type        = map(any)
  description = "Workload Identity Pool Provider attribute mapping"
  default = {
    "google.subject"             = "assertion.sub"
    "attribute.actor"            = "assertion.actor"
    "attribute.aud"              = "assertion.aud"
    "attribute.repository"       = "assertion.repository"
    "attribute.repository_owner" = "assertion.repository_owner"
  }
}
variable "allowed_audiences" {
  type        = list(string)
  description = "Workload Identity Pool Provider allowed audiences"
  default     = []
}
variable "sa_mapping" {
  type = map(object({
    sa_name   = string
    attribute = string
  }))
  description = "Service Account resource names and corresponding WIF provider attributes. If attribute is set to `*` all identities in the pool are granted access to SAs."
  default = {
    gha-workload-identity = {
      sa_name   = "projects/my-gcp-project/serviceAccounts/example-sa@my-gcp-project.iam.gserviceaccount.com",
      attribute = "*"
    }
  }
}
