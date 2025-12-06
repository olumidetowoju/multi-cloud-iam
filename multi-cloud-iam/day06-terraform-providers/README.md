# Day 6 – Terraform Multi-Cloud Providers & Remote State

## AWS S3 backend (sample)
Create the backend infra:
```bash
cd day06-terraform-providers/aws-backend
cp ../../terraform/aws/providers.tf ./providers.tf
terraform init && terraform apply -auto-approve
```
Then place a `backend.hcl` and run:
```bash
terraform init -backend-config=backend.hcl
```
