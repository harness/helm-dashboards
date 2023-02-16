{{/*
Expand the name of the chart.
*/}}
{{- define "looker.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "looker.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "looker.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "looker.labels" -}}
helm.sh/chart: {{ include "looker.chart" . }}
{{ include "looker.selectorLabels" . }}
{{- if .Chart.AppVersion }}
looker.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
looker.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "looker.selectorLabels" -}}
looker.kubernetes.io/name: {{ include "looker.name" . }}
looker.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "looker.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "looker.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{- define "looker.pullSecrets" -}}
{{ include "common.images.pullSecrets" (dict "images" (list .Values.image .Values.waitForInitContainer.image) "global" .Values.global ) }}
{{- end -}}

{{- define "looker-mysql.pullSecrets" -}}
{{ include "common.images.pullSecrets" (dict "images" (list .Values.image.mysql ) "global" .Values.global ) }}
{{- end -}}

{{- define "looker.generateLookerSecrets" }}
    lookerLicenseKey: {{ include "harnesscommon.secrets.passwords.manage" (dict "secret" "looker-secrets" "key" "lookerMasterKey" "providedValues" (list "secrets.lookerLicenseKey") "length" 32 "context" $) }}
    lookerMasterKey: {{ include "harnesscommon.secrets.passwords.manage" (dict "secret" "looker-secrets" "key" "lookerMasterKey" "providedValues" (list "secrets.lookerMasterKey") "length" 32 "context" $) }}
    clickhousePassword: {{ include "harnesscommon.secrets.passwords.manage" (dict "secret" "looker-secrets" "key" "redshiftPassword" "providedValues" (list "secrets.redshiftPassword") "length" 16 "context" $) }}
{{- end }}

{{- define "looker.generateLookerSecrets2" }}
    lookerClientId: {{ include "harnesscommon.secrets.passwords.manage" (dict "secret" "harness-looker-secrets" "key" "lookerClientId" "providedValues" (list "secrets.lookerClientId") "length" 20 "context" $) }}
    lookerClientSecret: {{ include "harnesscommon.secrets.passwords.manage" (dict "secret" "harness-looker-secrets" "key" "lookerClientSecret" "providedValues" (list "secrets.lookerClientSecret") "length" 24 "context" $) }}
    lookerEmbedSecret: {{ include "harnesscommon.secrets.passwords.manage" (dict "secret" "harness-looker-secrets" "key" "lookerEmbedSecret" "providedValues" (list "secrets.lookerEmbedSecret") "length" 16 "context" $) }}
    lookerSignupUrl: {{ include "harnesscommon.secrets.passwords.manage" (dict "secret" "harness-looker-secrets" "key" "lookerSignupUrl" "providedValues" (list "secrets.lookerSignupUrl") "length" 16 "context" $) }}
{{- end }}

{{- define "looker.generateMysqlSecrets" }}
    lookerMySqlRootPassword: {{ include "harnesscommon.secrets.passwords.manage" (dict "secret" "looker-mysql-secrets" "key" "lookerMySqlRootPassword" "providedValues" (list "secrets.lookerMySqlRootPassword") "length" 8 "context" $) }}
    lookerMySqlUserPassword: {{ include "harnesscommon.secrets.passwords.manage" (dict "secret" "looker-mysql-secrets" "key" "lookerMySqlUserPassword" "providedValues" (list "secrets.lookerMySqlUserPassword") "length" 8 "context" $) }}
{{- end }}