# ✅ Day 01 — IAM Foundations & Threat Modeling

Welcome to **Day 01** of your **Multi-Cloud IAM Mastery Bootcamp**.

Today is 100% about **deep conceptual clarity**.  
Before we automate IAM with Terraform, you must fully understand:

- What identity REALLY is  
- How authentication differs from authorization  
- How RBAC differs from ABAC  
- How IAM is exploited in real-world breaches  
- How to model identity threats

---

# 🎯 Day 01 Objectives

By the end of today, you will be able to:

✅ Explain IAM using real-world analogies  
✅ Identify privilege escalation paths  
✅ Understand cloud trust boundaries  
✅ Perform IAM threat modeling  
✅ Read and interpret IAM attack paths  

---

# 🧠 Core IAM Concepts (Instructor Mode)

## 1️⃣ Identity
An **identity** is any entity that can request access:
- Human users
- Applications
- Virtual machines
- Containers
- Serverless functions

> Identity is **WHO** is asking.

---

## 2️⃣ Authentication
Authentication proves identity.

Examples:
- Username & Password
- MFA (TOTP, Push, Hardware Key)
- Certificates
- SAML / OIDC

> Authentication proves **WHO you are**.

---

## 3️⃣ Authorization
Authorization decides what you can do **after** authentication.

Examples:
- Read S3 bucket
- Start VM
- Access Key Vault secret

> Authorization defines **WHAT you can do**.

---

# 🔐 RBAC vs ABAC

## RBAC — Role-Based Access Control
Access based on **job role**:
- Admin
- Developer
- Auditor

✅ Simple  
❌ Becomes bloated at scale  

---

## ABAC — Attribute-Based Access Control
Decisions based on **attributes**:
- User department
- Resource tags
- Access time
- Device health

✅ Scales infinitely  
✅ Zero-trust friendly  
✅ Cloud-native

---

# 💣 Real-World IAM Breach Patterns

| Attack | Description |
|--------|-------------|
| Credential Theft | Leaked access keys from GitHub |
| Privilege Escalation | Over-permissive policies |
| Lateral Movement | AssumeRole hopping |
| Shadow Admins | Hidden permissions via nested roles |

---

# 🧱 IAM Threat Model (STRIDE)

| Threat | IAM Example |
|--------|-------------|
| Spoofing | Stolen access keys |
| Tampering | Policy modification |
| Repudiation | No logging on IAM role |
| Information Disclosure | Open S3 buckets |
| Denial of Service | Locking out root |
| Elevation of Privilege | Wildcard `"*"` permissions |

---

# 🧪 Lab (Conceptual Only — No Terraform Today)

✅ Draw your personal IAM trust boundaries:
- Who are your users?
- What workloads exist?
- What clouds exist?
- What trusts what?

✅ Identify:
- Where secrets exist
- Where credentials rotate
- Where MFA is enforced

---

# ✅ End of Day 01 Outcome

After today you now:

✅ Think like an IAM attacker  
✅ Think like a Zero-Trust architect  
✅ Understand cloud identity at the protocol level  
✅ Are ready for Terraform automation (Day 02)

---

# 🔜 Tomorrow (Day 02 Preview)

Tomorrow you will:
✅ Deploy real AWS IAM users with Terraform  
✅ Create IAM roles  
✅ Attach policies  
✅ Enforce least privilege  
✅ Break & fix identity permissions  

➡️ Move on to:  
👉 **Day 02 — AWS IAM with Terraform**
