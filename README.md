# Workload Identity Federation GCP & GitHub Actions & Terraform

This repository shows an example of configuring Workload Identity Federation (with creating two resources - `workload identity pool` and `workload identity pool provider`) in [Google Cloud](cloud.google.com) [terraform](https://terraform.io/)

## Preparation actions

Need to create a service account, this step is not described in this repository for simplicity.
You can refer to the [official documentation](https://cloud.google.com/iam/docs/creating-managing-service-accounts) or use official terraform [resource google_service_account](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/google_service_account).

Also you can use gcloud:

```bash
gcloud iam service-accounts create SA_NAME \
    --description="DESCRIPTION" \
    --display-name="DISPLAY_NAME"
```

## Variables

- `project_id` — GCP project id
- `pool_id` — GCP workload identity pool id
- `pool_display_name` — GCP workload identity pool name
- `pool_description` — GCP workload identity pool description
- `provider_id` — GCP workload identity pool provider id
- `provider_display_name` — GCP workload identity pool provider name
- `provider_description` — GCP workload identity pool provider description
- `attribute_condition` — Condition for workload identity pool provider
- `attribute_mapping` — Attribute mapping (GitHub and Google)
- `allowed_audiences` — Workload Identity Pool Provider allowed audiences
- `sa_mapping` \_ Service Account resource names and corresponding WIF provider attributes
