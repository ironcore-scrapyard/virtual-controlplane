# virtual-controlplane

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.20.5](https://img.shields.io/badge/AppVersion-1.20.5-informational?style=flat-square)

A Helm chart for a Virtual Kubernetes controlplane

**Homepage:** <https://github.com/onmetal/virtual-controlplane/>

## Source Code

* <https://github.com/onmetal/virtual-controlplane/charts/virtual-controlplane>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| apiServer.hostname | string | `"apiserver-hostname"` |  |
| etcd.events.endpoints | string | `nil` |  |
| etcd.main.endpoints | string | `nil` |  |
| images.kubeAPIServer | string | `"k8s.gcr.io/kube-apiserver:v1.20.5"` |  |
| images.kubeControllerManager | string | `"k8s.gcr.io/kube-controller-manager:v1.20.5"` |  |
| replicas.kubeAPIServer | int | `3` |  |
| replicas.kubeControllerManager | int | `2` |  |
| serviceName | string | `"kube-apiserver"` |  |
| tls.admin.crt | string | `"client-certificate"` |  |
| tls.admin.key | string | `"client-key"` |  |
| tls.identity.ca | string | `nil` |  |
| tls.kubeAPIServer.ca.crt | string | `"ca-certificate"` |  |
| tls.kubeAPIServer.ca.key | string | `"ca-key"` |  |
| tls.kubeAPIServer.server.crt | string | `"server-certificate"` |  |
| tls.kubeAPIServer.server.key | string | `"server-key"` |  |
| tls.kubeAPIServer.staticToken | string | `"password"` |  |
| tls.kubeControllerManager.crt | string | `"client-certificate"` |  |
| tls.kubeControllerManager.key | string | `"client-key"` |  |
| tls.serviceAccountKey | string | `"key"` |  |