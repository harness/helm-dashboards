## Harness Dashboards Chart

A Helm chart for custom dashboards

![Version: 0.2.2](https://img.shields.io/badge/Version-0.2.2-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.0.76620](https://img.shields.io/badge/AppVersion-1.0.76620-informational?style=flat-square)

## Usage

Use the following dependency to add this chart repository to your Helm installation:

```
dependencies:
    - name: ng-custom-dashboards
      repository: https://harness.github.io/helm-dashboards
      version: 0.2.2
```

## Publishing the Chart
Publishing of the Chart is done automatically by a Github workflow when a change is pushed to the main branch.
Before merging to main please remember to manually update the version.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| global.airgap | string | `"false"` |  |
| global.ingress.className | string | `""` |  |
| global.ingress.enabled | bool | `false` |  |
| global.ingress.hosts | list | `[]` |  |
| global.ingress.tls.enabled | bool | `false` |  |
| global.ingress.tls.secretName | string | `""` |  |
| global.loadbalancerURL | string | `""` |  |
| looker.affinity | object | `{}` |  |
| looker.config.email | string | `"harnessSupport@harness.io"` | email address of the support user, required for initial signup and support |
| looker.config.firstName | string | `"Harness"` | name of the user who performs setup and support tasks |
| looker.config.lastName | string | `"Support"` | last name of the user who performs setup and support tasks |
| looker.config.projectName | string | `"Harness"` | name of the looker project which will be created |
| looker.config.redshiftConnectionName | string | `"redshift-ccm"` | redshift connection name, must match model connection name |
| looker.config.redshiftDatabase | string | `nil` | redshift database name |
| looker.config.redshiftHost | string | `nil` | redshift hostname |
| looker.config.redshiftPort | string | `"5439"` | redshift port |
| looker.config.redshiftUser | string | `"looker"` | redshift user |
| looker.config.timescaleConnectionName | string | `"timescale"` | timescale connection name, must match model connection name |
| looker.config.timescaleDatabase | string | `"harness"` | timescale database name |
| looker.config.timescaleHost | string | `"timescaledb-single-chart.harness"` | timescale hostname |
| looker.config.timescalePort | string | `"5432"` | timescale port |
| looker.config.timescaleUser | string | `"postgres"` | timescale user |
| looker.fullnameOverride | string | `""` |  |
| looker.global.airgap | string | `"false"` |  |
| looker.global.ingress.className | string | `""` |  |
| looker.global.ingress.enabled | bool | `false` |  |
| looker.global.ingress.tls.enabled | bool | `false` |  |
| looker.global.loadbalancerURL | string | `""` |  |
| looker.global.storageClassName | string | `nil` |  |
| looker.image.digest | string | `""` |  |
| looker.image.pullPolicy | string | `"IfNotPresent"` |  |
| looker.image.registry | string | `"docker.io"` |  |
| looker.image.repository | string | `"harness/looker-signed"` |  |
| looker.image.tag | string | `"22.18.18.0"` |  |
| looker.ingress.host | string | `""` | Required if ingress is enabled, Looker requires a separate DNS domain name to function |
| looker.ingress.tls.secretName | string | `""` |  |
| looker.lookerSecrets.clientId.key | string | `"lookerClientId"` | name of secret containing the id used for API authentication, generate a 20-byte key, e.g. openssl rand -hex 10 |
| looker.lookerSecrets.clientId.name | string | `"harness-looker-secrets"` |  |
| looker.lookerSecrets.clientSecret.key | string | `"lookerClientSecret"` | name of secret containing the client secret used for API authentication, generate a 24-byte key, e.g. openssl rand -hex 12 |
| looker.lookerSecrets.clientSecret.name | string | `"harness-looker-secrets"` |  |
| looker.lookerSecrets.licenseKey.key | string | `"lookerLicenseKey"` | name of secret containing the looker license key which will be provided by Harness |
| looker.lookerSecrets.licenseKey.name | string | `"harness-secrets"` |  |
| looker.lookerSecrets.masterKey.key | string | `"lookerMasterKey"` | name of secret containing the key used for at rest encryption by looker, generate a Base64, 32-byte key, e.g. openssl rand -base64 32 |
| looker.lookerSecrets.masterKey.name | string | `"harness-secrets"` |  |
| looker.maxSurge | int | `1` |  |
| looker.maxUnavailable | int | `0` |  |
| looker.modelsDirectory | string | `"/mnt/lookerfiles"` | directory where Looker models volume will be mounted |
| looker.nameOverride | string | `""` |  |
| looker.nodeSelector | object | `{}` |  |
| looker.persistentVolume.accessMode | string | `"ReadWriteOnce"` |  |
| looker.persistentVolume.storage.database | string | `"2Gi"` | size of volume where Looker stores database |
| looker.persistentVolume.storage.models | string | `"2Gi"` | size of volume where Looker stores model files |
| looker.podAnnotations | object | `{}` |  |
| looker.podSecurityContext | object | `{}` |  |
| looker.redshiftSecrets.password.key | string | `"redshiftPassword"` | name of secret containing the redshift password |
| looker.redshiftSecrets.password.name | string | `"harness-secrets"` |  |
| looker.resources.limits.cpu | int | `4` |  |
| looker.resources.limits.memory | string | `"8192Mi"` |  |
| looker.resources.requests.cpu | int | `2` |  |
| looker.resources.requests.memory | string | `"4096Mi"` |  |
| looker.securityContext.runAsNonRoot | bool | `true` |  |
| looker.securityContext.runAsUser | int | `1001` |  |
| looker.service.port.api | int | `19999` |  |
| looker.service.port.web | int | `9999` |  |
| looker.service.type | string | `"ClusterIP"` |  |
| looker.serviceAccount.annotations | object | `{}` |  |
| looker.serviceAccount.create | bool | `true` |  |
| looker.serviceAccount.name | string | `"harness-looker"` |  |
| looker.timescaleSecrets.password.key | string | `"timescaledbPostgresPassword"` | name of secret containing the timescale password |
| looker.timescaleSecrets.password.name | string | `"harness-secrets"` |  |
| looker.tolerations | list | `[]` |  |
| ng-custom-dashboards.affinity | object | `{}` |  |
| ng-custom-dashboards.autoscaling.enabled | bool | `true` |  |
| ng-custom-dashboards.autoscaling.maxReplicas | int | `100` |  |
| ng-custom-dashboards.autoscaling.minReplicas | int | `1` |  |
| ng-custom-dashboards.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| ng-custom-dashboards.config.customerFolderId | string | `"6"` | folder ID of the 'CUSTOMER' folder in looker |
| ng-custom-dashboards.config.lookerApiVersion | string | `"4.0"` | looker sdk param |
| ng-custom-dashboards.config.lookerHost | string | `""` | hostname of your looker install |
| ng-custom-dashboards.config.lookerPort | string | `"443"` | port of your looker install |
| ng-custom-dashboards.config.lookerScheme | string | `"https"` | scheme used for your looker install, http or https |
| ng-custom-dashboards.config.lookerTimeout | string | `"120"` | looker sdk param |
| ng-custom-dashboards.config.lookerVerifySsl | string | `"false"` | looker sdk param |
| ng-custom-dashboards.config.modelPrefix | string | `""` | if you have configured Looker models with a prefix enter it here |
| ng-custom-dashboards.config.ootbFolderId | string | `"7"` | folder ID of the 'OOTB' folder in looker |
| ng-custom-dashboards.config.redisHost | string | `"harness-redis-master"` | hostname of your redis install |
| ng-custom-dashboards.config.redisPort | string | `"6379"` | port of your redis install |
| ng-custom-dashboards.config.redisSentinel | string | `"true"` | used to enable Redis Sentinel support |
| ng-custom-dashboards.config.redisSentinelMasterName | string | `"harness-redis"` | name of the Redis Sentinel master |
| ng-custom-dashboards.config.redisSentinelUrls | string | `""` | list of sentinel URLs, example host:port,host:port |
| ng-custom-dashboards.fullnameOverride | string | `""` |  |
| ng-custom-dashboards.image.digest | string | `""` |  |
| ng-custom-dashboards.image.pullPolicy | string | `"IfNotPresent"` |  |
| ng-custom-dashboards.image.registry | string | `"docker.io"` |  |
| ng-custom-dashboards.image.repository | string | `"harness/dashboard-service-signed"` |  |
| ng-custom-dashboards.image.tag | string | `"v1.52.24"` |  |
| ng-custom-dashboards.lookerSecrets.clientId.key | string | `"lookerClientId"` |  |
| ng-custom-dashboards.lookerSecrets.clientId.name | string | `"harness-looker-secrets"` |  |
| ng-custom-dashboards.lookerSecrets.clientSecret.key | string | `"lookerClientSecret"` |  |
| ng-custom-dashboards.lookerSecrets.clientSecret.name | string | `"harness-looker-secrets"` |  |
| ng-custom-dashboards.lookerSecrets.secret.key | string | `"lookerEmbedSecret"` |  |
| ng-custom-dashboards.lookerSecrets.secret.name | string | `"harness-looker-secrets"` |  |
| ng-custom-dashboards.maxSurge | int | `1` |  |
| ng-custom-dashboards.maxUnavailable | int | `0` |  |
| ng-custom-dashboards.nameOverride | string | `""` |  |
| ng-custom-dashboards.nodeSelector | object | `{}` |  |
| ng-custom-dashboards.podAnnotations | object | `{}` |  |
| ng-custom-dashboards.podSecurityContext | object | `{}` |  |
| ng-custom-dashboards.replicaCount | int | `1` |  |
| ng-custom-dashboards.resources.limits.cpu | int | `1` |  |
| ng-custom-dashboards.resources.limits.memory | string | `"1536Mi"` |  |
| ng-custom-dashboards.resources.requests.cpu | int | `1` |  |
| ng-custom-dashboards.resources.requests.memory | string | `"768Mi"` |  |
| ng-custom-dashboards.securityContext.runAsNonRoot | bool | `true` |  |
| ng-custom-dashboards.securityContext.runAsUser | int | `65534` |  |
| ng-custom-dashboards.service.port | int | `5000` |  |
| ng-custom-dashboards.service.type | string | `"ClusterIP"` |  |
| ng-custom-dashboards.serviceAccount.annotations | object | `{}` |  |
| ng-custom-dashboards.serviceAccount.create | bool | `false` |  |
| ng-custom-dashboards.serviceAccount.name | string | `"harness-default"` |  |
| ng-custom-dashboards.tolerations | list | `[]` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
