{{/*
Create the workspace name
*/}}
{{- define "<%= name %>.name" -}}
{{- printf "%s-%s-workspace" .Release.Name .Release.Namespace | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create the output secret name
*/}}
{{- define "<%= name %>.output.secret.name" -}}
{{- printf "%s-%s-output" .Release.Name .Release.Namespace | trunc 63 | trimSuffix "-" }}
{{- end }}
