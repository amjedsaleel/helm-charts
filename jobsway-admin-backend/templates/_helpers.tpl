# Application server image
{{- define "jobsway-admin-backend" }}
{{- if .Values.image.tag  }}
- name: {{ .Release.Name }}
  image: {{ .Values.image.repository }}:{{ .Values.image.tag }}
{{- else }}
- name: {{ .Release.Name }}
  image: {{ .Values.image.repository }}
{{- end }}
{{- end  }}

# Mongodb database credentials
{{- define "mongodb-credentials" }} 
{{- if .Values.credentials.databasename }}
  mongodb-url: {{ .Values.credentials.monodburl | b64enc }}
  database-name: {{ .Values.credentials.databasename | b64enc}}
{{- else }}
  mongodb-url: {{ .Values.credentials.monodburl | b64enc }}
{{- end }}
{{- end }}
