{{- define "garden.kubeconfig-controller-manager" -}}
apiVersion: v1
kind: Config
current-context: garden
contexts:
- context:
    cluster: garden
    user: kube-controller-manager
  name: garden
clusters:
- cluster:
    certificate-authority-data: {{ .Values.tls.kubeAPIServer.ca.crt | b64enc }}
    server: https://virtual-controlplane:443
  name: garden
users:
- name: kube-controller-manager
  user:
    client-certificate-data: {{ .Values.tls.kubeControllerManager.crt | b64enc }}
    client-key-data: {{ .Values.tls.kubeControllerManager.key | b64enc }}
{{- end -}}

{{- define "garden.kubeconfig-gardener" -}}
apiVersion: v1
kind: Config
current-context: garden
contexts:
- context:
    cluster: garden
    user: gardener
  name: garden
clusters:
- cluster:
    certificate-authority-data: {{ .Values.tls.kubeAPIServer.ca.crt | b64enc }}
    server: https://{{ .Values.apiServer.serviceName }}:443
  name: garden
users:
- name: gardener
  user:
    client-certificate-data: {{ .Values.tls.gardener.crt | b64enc }}
    client-key-data: {{ .Values.tls.gardener.key | b64enc }}
{{- end -}}

{{- define "garden.kubeconfig-admin" -}}
apiVersion: v1
kind: Config
current-context: garden
contexts:
- context:
    cluster: garden
    user: admin
  name: garden
clusters:
- cluster:
    certificate-authority-data: {{ .Values.tls.kubeAPIServer.ca.crt | b64enc }}
    server: https://{{ .Values.apiServer.hostname }}:443
  name: garden
users:
- name: admin
  user:
    client-certificate-data: {{ .Values.tls.admin.crt | b64enc }}
    client-key-data: {{ .Values.tls.admin.key | b64enc }}
{{- end -}}
