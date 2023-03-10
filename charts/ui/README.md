# ui

![Version: v0.1.0](https://img.shields.io/badge/Version-v0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v0.1.0](https://img.shields.io/badge/AppVersion-v0.1.0-informational?style=flat-square)

A Helm chart for a React application

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| appVersion | string | `"v0.1.0"` |  |
| env | string | `"prod"` |  |
| fullnameOverride | string | `""` | A full name override for resources created by the chart. |
| ingress.annotations."cert-ui.io/cluster-issuer" | string | `"letsencrypt-prod"` |  |
| ingress.annotations."nginx.ingress.kubernetes.io/backend-protocol" | string | `"HTTPS"` |  |
| ingress.annotations."nginx.ingress.kubernetes.io/proxy-body-size" | string | `"50m"` |  |
| ingress.annotations."nginx.ingress.kubernetes.io/rewrite-target" | string | `"/$1"` |  |
| ingress.annotations."nginx.ingress.kubernetes.io/use-regex" | string | `"true"` |  |
| ingress.enabled.dev | bool | `false` |  |
| ingress.enabled.prod | bool | `true` |  |
| ingress.enabled.staging | bool | `true` |  |
| ingress.hostname.prod | string | `""` |  |
| ingress.hostname.staging | string | `""` |  |
| ingress.ingressClassName | string | `"nginx"` |  |
| ingress.path | string | `"/(.*)"` |  |
| ingress.pathType | string | `"Prefix"` |  |
| ingress.tls | bool | `true` |  |
| nameOverride | string | `""` | A name override for resources created by the chart. |
| service.port | int | `3000` |  |
| service.targetPort | int | `80` |  |
| service.type | string | `"ClusterIP"` |  |
| ui.affinity | object | `{}` | Node affinity for the ui pod. |
| ui.image.repository.dev | string | `""` |  |
| ui.image.repository.prod | string | `""` |  |
| ui.image.repository.staging | string | `""` |  |
| ui.image.tag | string | `""` | The tag for the ui image. Defaults to the chart version. |
| ui.imagePullSecrets | list | `[]` | Image pull secrets for the ui pod. |
| ui.nodeSelector | object | `{}` | Node selectors for the ui pod. |
| ui.podSecurityContext | object | `{}` | The `PodSecurityContext` for the ui pod. |
| ui.replicas.dev | int | `1` |  |
| ui.replicas.prod | int | `1` |  |
| ui.replicas.staging | int | `1` |  |
| ui.resources | object | `{}` | Resource limits for the ui pod. |
| ui.securityContext | object | `{}` | The container security context for the ui pod. |
| ui.tolerations | list | `[]` | Node tolerations for the ui pod. |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
