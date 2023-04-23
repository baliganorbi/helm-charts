{{/* Generate chart name and version */}}
{{- define "gettingstarted.chart" }}
chart_name: {{ .Chart.Name }}
chart_version: {{ .Chart.Version }}
{{- end }}