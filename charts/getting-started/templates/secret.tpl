apiVersion: v1
kind: Secret
metadata:
  name: {{ .Release.Name }}-secret
type: Opaque
data:
{{ (.Files.Glob "**/bar/*.yaml").AsSecrets | indent 2 }}
  token: |-
    {{ .Files.Get "config1.toml" | b64enc }}