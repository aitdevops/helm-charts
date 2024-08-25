{{/*
Expand the name of the chart.
*/}}
{{- define "argo-cd.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{/*
Create a default fully qualified app name.
*/}}
{{- define "argo-cd.fullname" -}}
{{- printf "%s-%s" (include "argo-cd.name" .) .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end }}
