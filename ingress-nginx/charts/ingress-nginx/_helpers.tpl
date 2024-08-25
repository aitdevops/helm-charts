{{/*
Expand the name of the chart.
*/}}
{{- define "ingress-nginx.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{/*
Create a default fully qualified app name.
*/}}
{{- define "ingress-nginx.fullname" -}}
{{- printf "%s-%s" (include "ingress-nginx.name" .) .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end }}
