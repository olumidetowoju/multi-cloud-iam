#!/usr/bin/env bash
set -euo pipefail

if [[ ! -d "$HOME/multi-cloud-iam/multi-cloud-iam" ]]; then
  echo "Expected project at ~/multi-cloud-iam/multi-cloud-iam (from earlier ZIP)."
  echo "Please unzip the main course first, then re-run this script."
  exit 1
fi

echo "Copying example.auto.tfvars and backend.hcl into your project..."
cp -f multi-cloud-iam/day02-aws-iam/terraform/example.auto.tfvars "$HOME/multi-cloud-iam/multi-cloud-iam/day02-aws-iam/terraform/example.auto.tfvars"
cp -f multi-cloud-iam/day03-azure-iam/terraform/example.auto.tfvars "$HOME/multi-cloud-iam/multi-cloud-iam/day03-azure-iam/terraform/example.auto.tfvars"
cp -f multi-cloud-iam/day04-gcp-iam/terraform/example.auto.tfvars "$HOME/multi-cloud-iam/multi-cloud-iam/day04-gcp-iam/terraform/example.auto.tfvars"
mkdir -p "$HOME/multi-cloud-iam/multi-cloud-iam/day06-terraform-providers/aws-backend"
cp -f multi-cloud-iam/day06-terraform-providers/aws-backend/backend.hcl "$HOME/multi-cloud-iam/multi-cloud-iam/day06-terraform-providers/aws-backend/backend.hcl"

echo "Done. Now open each example.auto.tfvars and fill secrets (AWS keys, Azure client secret, GCP JSON path)."
