apiVersion: v1
kind: ConfigMap
metadata:
  name: {{ .Release.Name }}-configmap
  labels:
{{- include "gettingstarted.chart" . | indent 4 }}
data:
  myvalue: "Hello World"
{{- $toppings := .Values.pizzaToppings }}
{{- with .Values.favorite }}
  drink: {{ .drink | replace "a" "4" | replace "e" "3" | replace "o" "0" | quote }}
  {{- if has .drink (list "coffee" "tea") -}}
    {{ "mug: true" | nindent 2 }}
  {{- end }}
  food: {{ .food | upper | quote }}
  {{- if .food | lower | eq "pizza" }}
  toppings: |-
    {{- range $index, $topping := $toppings }}
    * {{ printf "%d: %s" $index $topping | title | quote }}
    {{- end }}
  {{- end }}
{{- end }}
{{- include "gettingstarted.chart" . | indent 2 }}
{{ (.Files.Glob "**/foo/*.yaml").AsConfig | indent 2 }}