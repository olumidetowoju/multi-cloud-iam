# Day 4 – GCP IAM Core
## Run
```bash
cd day04-gcp-iam/terraform
cp ../../terraform/gcp/providers.tf ./providers.tf
cat > example.auto.tfvars <<'EOF'
gcp_project_id = "REPLACE_ME"
gcp_region = "us-central1"
gcp_credentials_json_path = "/home/$USER/gcp-sa.json"
EOF
terraform init && terraform apply -auto-approve
```
