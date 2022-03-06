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


