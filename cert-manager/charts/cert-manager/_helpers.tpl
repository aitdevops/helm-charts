{{/*
Expand the name of the chart.
*/}}
{{- define "cert-manager.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{/*
Create a default fully qualified app name.
*/}}
{{- define "cert-manager.fullname" -}}
{{- printf "%s-%s" (include "cert-manager.name" .) .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end }}
