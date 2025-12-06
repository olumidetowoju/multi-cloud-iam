# Multi-Cloud IAM Bootcamp (10 Days) — Instructor/Tutor Style

Welcome, **Olumide**. I’ll be your instructor. You’ll be the hands-on student.
This bootcamp is **terraform-first**, with **Docker security & EC2 hardening**, spanning **AWS, Azure, and GCP**.
Everything here is designed to be **copy/paste runnable** on **Ubuntu 24.04 (WSL on Windows)**.

## Quick Start
```bash
cd ~/multi-cloud-iam
aws --version && az version && gcloud --version && terraform -version && docker --version
```

## Day-by-Day Index
- [Day 1 – Foundations & Tooling](day01-foundations/README.md)
- [Day 2 – AWS IAM Core (Users, Roles, Policies)](day02-aws-iam/README.md)
- [Day 3 – Azure IAM Core (Microsoft Entra ID)](day03-azure-iam/README.md)
- [Day 4 – GCP IAM Core](day04-gcp-iam/README.md)
- [Day 5 – Federation: Azure → AWS (SSO) & JIT](day05-federation/README.md)
- [Day 6 – Terraform Multi-Cloud Providers & State](day06-terraform-providers/README.md)
- [Day 7 – Docker Security (Build, Scan, Least Privilege)](day07-docker-security/README.md)
- [Day 8 – EC2 Secure Deployments (Network + IAM + ECR)](day08-aws-ec2-secure/README.md)
- [Day 9 – Cross-Cloud Service Identity (OIDC/WIF)](day09-workload-identity/README.md)
- [Day 10 – Capstone & Governance](day10-capstone/README.md)

## Repo Layout
```
.
├─ day01-foundations/
├─ day02-aws-iam/
├─ day03-azure-iam/
├─ day04-gcp-iam/
├─ day05-federation/
├─ day06-terraform-providers/
├─ day07-docker-security/
├─ day08-aws-ec2-secure/
├─ day09-workload-identity/
├─ day10-capstone/
└─ terraform/
```

> **Secrets:** Provider blocks use variables (no hardcoding). Pass credentials via env vars or `*.tfvars` files.
