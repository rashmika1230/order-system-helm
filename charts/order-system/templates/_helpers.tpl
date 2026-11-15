{{/* Labels used to select a service's pods. Must never change after the first install. */}}
{{- define "order-system.selectorLabels" -}}
app.kubernetes.io/name: {{ .name }}
app.kubernetes.io/instance: {{ .root.Release.Name }}
{{- end }}

{{/* Full set of recommended Kubernetes labels */}}
{{- define "order-system.labels" -}}
{{ include "order-system.selectorLabels" . }}
app.kubernetes.io/part-of: order-system
app.kubernetes.io/managed-by: {{ .root.Release.Service }}
helm.sh/chart: {{ printf "%s-%s" .root.Chart.Name .root.Chart.Version }}
{{- end }}
