output "pool_name" {
  description = "Pool name"
  value       = google_iam_workload_identity_pool.github_actions.name
}
output "provider_name" {
  description = "Provider name"
  value       = google_iam_workload_identity_pool_provider.github_actions.name
}
