# Day 7 – Docker Security (Build, Scan, Least Privilege)
## Build & Run
```bash
cd day07-docker-security/app
docker build -t mc-iam-app:secure .
docker run --rm --read-only --cap-drop=ALL --pids-limit=100 mc-iam-app:secure
```
## Scan
```bash
sudo apt -y install trivy || (sudo apt update && sudo apt -y install trivy)
trivy image mc-iam-app:secure
```
