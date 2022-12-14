# looker

![Version: 0.1.15](https://img.shields.io/badge/Version-0.1.15-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 22.18.18.0](https://img.shields.io/badge/AppVersion-22.18.18.0-informational?style=flat-square)

A Helm chart for Kubernetes

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | common | 2.x.x |
| https://harness.github.io/helm-common | harness-common | 1.x.x |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| config.email | string | `"harnessSupport@harness.io"` | email address of the support user, required for initial signup and support |
| config.firstName | string | `"Harness"` | name of the user who performs setup and support tasks |
| config.lastName | string | `"Support"` | last name of the user who performs setup and support tasks |
| config.projectName | string | `"Harness"` | name of the looker project which will be created |
| config.redshiftConnectionName | string | `"redshift-ccm"` | redshift connection name, must match model connection name |
| config.redshiftDatabase | string | `nil` | redshift database name |
| config.redshiftHost | string | `nil` | redshift hostname |
| config.redshiftPort | string | `"5439"` | redshift port |
| config.redshiftUser | string | `"looker"` | redshift user |
| config.timescaleConnectionName | string | `"timescale"` | timescale connection name, must match model connection name |
| config.timescaleDatabase | string | `"harness"` | timescale database name |
| config.timescaleHost | string | `"timescaledb-single-chart.harness"` | timescale hostname |
| config.timescalePort | string | `"5432"` | timescale port |
| config.timescaleUser | string | `"postgres"` | timescale user |
| fullnameOverride | string | `""` |  |
| global.airgap | string | `"false"` |  |
| global.ingress.className | string | `""` |  |
| global.ingress.enabled | bool | `false` |  |
| global.ingress.tls.enabled | bool | `false` |  |
| global.loadbalancerURL | string | `""` |  |
| global.storageClassName | string | `nil` |  |
| image.digest | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.registry | string | `"docker.io"` |  |
| image.repository | string | `"harness/looker-signed"` |  |
| image.tag | string | `"22.18.18.0"` |  |
| ingress.host | string | `""` | Required if ingress is enabled, Looker requires a separate DNS domain name to function |
| ingress.tls.secretName | string | `""` |  |
| lookerSecrets.clientId.key | string | `"lookerClientId"` | name of secret containing the id used for API authentication, generate a 20-byte key, e.g. openssl rand -hex 10 |
| lookerSecrets.clientId.name | string | `"harness-looker-secrets"` |  |
| lookerSecrets.clientSecret.key | string | `"lookerClientSecret"` | name of secret containing the client secret used for API authentication, generate a 24-byte key, e.g. openssl rand -hex 12 |
| lookerSecrets.clientSecret.name | string | `"harness-looker-secrets"` |  |
| lookerSecrets.licenseKey.key | string | `"lookerLicenseKey"` | name of secret containing the looker license key which will be provided by Harness |
| lookerSecrets.licenseKey.name | string | `"harness-secrets"` |  |
| lookerSecrets.masterKey.key | string | `"lookerMasterKey"` | name of secret containing the key used for at rest encryption by looker, generate a Base64, 32-byte key, e.g. openssl rand -base64 32 |
| lookerSecrets.masterKey.name | string | `"harness-secrets"` |  |
| maxSurge | int | `1` |  |
| maxUnavailable | int | `0` |  |
| modelsDirectory | string | `"/mnt/lookerfiles"` | directory where Looker models volume will be mounted |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| persistentVolume.accessMode | string | `"ReadWriteOnce"` |  |
| persistentVolume.storage.database | string | `"2Gi"` | size of volume where Looker stores database |
| persistentVolume.storage.models | string | `"2Gi"` | size of volume where Looker stores model files |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| redshiftSecrets.password.key | string | `"redshiftPassword"` | name of secret containing the redshift password |
| redshiftSecrets.password.name | string | `"harness-secrets"` |  |
| resources.limits.cpu | int | `4` |  |
| resources.limits.memory | string | `"8192Mi"` |  |
| resources.requests.cpu | int | `2` |  |
| resources.requests.memory | string | `"4096Mi"` |  |
| securityContext.runAsNonRoot | bool | `true` |  |
| securityContext.runAsUser | int | `1001` |  |
| service.port.api | int | `19999` |  |
| service.port.web | int | `9999` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `"harness-looker"` |  |
| timescaleSecrets.password.key | string | `"timescaledbPostgresPassword"` | name of secret containing the timescale password |
| timescaleSecrets.password.name | string | `"harness-secrets"` |  |
| tolerations | list | `[]` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
