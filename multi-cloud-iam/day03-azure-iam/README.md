# Day 3 – Azure IAM Core
## Run
```bash
cd day03-azure-iam/terraform
cp ../../terraform/azure/providers.tf ./providers.tf
cat > example.auto.tfvars <<'EOF'
azure_tenant_id       = "REPLACE_ME"
azure_subscription_id = "REPLACE_ME"
azure_client_id       = "REPLACE_ME"
azure_client_secret   = "REPLACE_ME"
EOF
terraform init && terraform apply -auto-approve
```
