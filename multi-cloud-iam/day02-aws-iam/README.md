# Day 2 – AWS IAM Core

## Run
```bash
cd day02-aws-iam/terraform
cp ../../terraform/aws/providers.tf ./providers.tf
cat > example.auto.tfvars <<'EOF'
aws_region = "us-east-1"
aws_access_key_id = "REPLACE_ME"
aws_secret_access_key = "REPLACE_ME"
EOF
terraform init && terraform apply -auto-approve
```
