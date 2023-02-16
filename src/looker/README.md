# looker

![Version: 0.2.1](https://img.shields.io/badge/Version-0.2.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 22.18.18.0](https://img.shields.io/badge/AppVersion-22.18.18.0-informational?style=flat-square)

A Helm chart for Kubernetes

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://harness.github.io/helm-common | harness-common | 1.x.x |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| clickhouseSecrets.password.key | string | `"clickhousePassword"` | name of secret containing the clickhouse password |
| clickhouseSecrets.password.name | string | `"looker-secrets"` |  |
| config.clickhouseConnectionName | string | `"smp-clickhouse"` | clickhouse connection name for CCM, must match model connection name |
| config.clickhouseDatabase | string | `nil` | clickhouse database name |
| config.clickhouseHost | string | `nil` | clickhouse hostname |
| config.clickhousePort | string | `""` | clickhouse port |
| config.clickhouseUser | string | `"looker"` | clickhouse user |
| config.email | string | `"harnessSupport@harness.io"` | email address of the support user, required for initial signup and support |
| config.ffConnectionName | string | `"smp-timescale-cf"` | timescale connection name for feature flags, must match model connection name |
| config.ffDatabase | string | `"harness_ff"` | timescale database name for feature flags |
| config.firstName | string | `"Harness"` | name of the user who performs setup and support tasks |
| config.lastName | string | `"Support"` | last name of the user who performs setup and support tasks |
| config.projectName | string | `"Harness"` | name of the looker project which will be created |
| config.stoConnectionName | string | `"smp-postgres"` | postgres connection name for STO, must match model connection name |
| config.stoDatabase | string | `"harness_sto"` | postgres database name for STO |
| config.timescaleConnectionName | string | `"smp-timescale"` | timescale connection name, must match model connection name |
| config.timescaleDatabase | string | `"harness"` | timescale database name |
| config.timescaleHost | string | `"timescaledb-single-chart.harness"` | timescale hostname |
| config.timescalePort | string | `"5432"` | timescale port |
| config.timescaleUser | string | `"postgres"` | timescale user |
| fullnameOverride | string | `""` |  |
| global.airgap | string | `"false"` |  |
| global.ha | bool | `false` |  |
| global.imagePullSecrets | list | `[]` |  |
| global.ingress.className | string | `""` |  |
| global.ingress.enabled | bool | `false` |  |
| global.ingress.tls.enabled | bool | `false` |  |
| global.istio.enabled | bool | `false` |  |
| global.istio.gateway.create | bool | `false` |  |
| global.istio.virtualService.gateways | string | `nil` |  |
| global.istio.virtualService.hosts | string | `nil` |  |
| global.loadbalancerURL | string | `""` |  |
| global.storageClassName | string | `nil` |  |
| image.digest | string | `""` |  |
| image.imagePullSecrets | list | `[]` |  |
| image.mysql.imagePullSecrets | list | `[]` |  |
| image.mysql.registry | string | `"docker.io"` |  |
| image.mysql.repository | string | `"harness/mysql"` |  |
| image.mysql.tag | string | `"enterprise-server-8.0.32"` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.registry | string | `"docker.io"` |  |
| image.repository | string | `"harness/looker-signed"` |  |
| image.tag | string | `"23.0.40"` |  |
| ingress.host | string | `""` | Required if ingress is enabled, Looker requires a separate DNS domain name to function |
| ingress.tls.secretName | string | `""` |  |
| lookerSecrets.clientId.key | string | `"lookerClientId"` | name of secret containing the id used for API authentication, generate a 20-byte key, e.g. openssl rand -hex 10 |
| lookerSecrets.clientId.name | string | `"harness-looker-secrets"` |  |
| lookerSecrets.clientSecret.key | string | `"lookerClientSecret"` | name of secret containing the client secret used for API authentication, generate a 24-byte key, e.g. openssl rand -hex 12 |
| lookerSecrets.clientSecret.name | string | `"harness-looker-secrets"` |  |
| lookerSecrets.licenseKey.key | string | `"lookerLicenseKey"` | name of secret containing the looker license key which will be provided by Harness |
| lookerSecrets.licenseKey.name | string | `"looker-secrets"` |  |
| lookerSecrets.masterKey.key | string | `"lookerMasterKey"` | name of secret containing the key used for at rest encryption by looker, generate a Base64, 32-byte key, e.g. openssl rand -base64 32 |
| lookerSecrets.masterKey.name | string | `"looker-secrets"` |  |
| maxSurge | int | `1` |  |
| maxUnavailable | int | `0` |  |
| modelsDirectory | string | `"/mnt/lookerfiles"` | directory where Looker models volume will be mounted |
| mysql.database | string | `"looker"` |  |
| mysql.port | string | `"3306"` |  |
| mysql.user | string | `"looker"` |  |
| mysqlSecrets.password.root.key | string | `"lookerMySqlRootPassword"` | name of secret containing the mysql root password |
| mysqlSecrets.password.root.name | string | `"looker-mysql-secrets"` |  |
| mysqlSecrets.password.user.key | string | `"lookerMySqlUserPassword"` | name of secret containing the mysql looker user password |
| mysqlSecrets.password.user.name | string | `"looker-mysql-secrets"` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| persistentVolume.accessMode | string | `"ReadWriteOnce"` |  |
| persistentVolume.storage.database | string | `"2Gi"` | size of volume where Looker stores database |
| persistentVolume.storage.models | string | `"2Gi"` | size of volume where Looker stores model files |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| resources.limits.cpu | int | `4` |  |
| resources.limits.memory | string | `"8192Mi"` |  |
| resources.requests.cpu | int | `2` |  |
| resources.requests.memory | string | `"4096Mi"` |  |
| secrets.clickhousePassword | string | `""` |  |
| secrets.lookerClientId | string | `""` |  |
| secrets.lookerClientSecret | string | `""` |  |
| secrets.lookerEmbedSecret | string | `""` |  |
| secrets.lookerLicenseKey | string | `"ZW52U3BlY2lmaWM="` |  |
| secrets.lookerMasterKey | string | `""` |  |
| secrets.lookerMySqlRootPassword | string | `""` |  |
| secrets.lookerMySqlUserPassword | string | `""` |  |
| secrets.lookerSignupUrl | string | `""` |  |
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
| waitForInitContainer.image.digest | string | `""` |  |
| waitForInitContainer.image.imagePullSecrets | list | `[]` |  |
| waitForInitContainer.image.pullPolicy | string | `"IfNotPresent"` |  |
| waitForInitContainer.image.registry | string | `"docker.io"` |  |
| waitForInitContainer.image.repository | string | `"ubuntu"` |  |
| waitForInitContainer.image.tag | string | `"20.04"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
