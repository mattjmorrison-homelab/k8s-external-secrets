# homelab-external-secrets

External Secrets Operator (ESO) deployment for the homelab k3s cluster, managed via ArgoCD.

Bridges OpenBao secrets into Kubernetes Secrets. Apps define `SecretStore` and `ExternalSecret` resources; ESO authenticates with OpenBao and creates the corresponding Kubernetes Secrets automatically.

---

[Homelab Docs](https://github.com/mattjmorrison/homelab/blob/main/docs/INDEX.md)
