# virtual-controlplane

![Version: 0.1.2](https://img.shields.io/badge/Version-0.1.2-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.22.1](https://img.shields.io/badge/AppVersion-1.22.1-informational?style=flat-square)

A Helm chart for a Virtual Kubernetes controlplane

**Homepage:** <https://github.com/onmetal/virtual-controlplane/>

## Source Code

* <https://github.com/onmetal/virtual-controlplane/charts/virtual-controlplane>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| admin.contextName | string | `"onmetal"` | kubeconfig context name |
| admin.tls.secretName | string | `"admin"` |  |
| admin.username | string | `"admin"` | username in the admin kubeconfig |
| apiServer.etcd.main.endpoints | string | `"https://etcd-client:2379"` | endpoints of the main etcd server |
| apiServer.etcd.resources | object | `{}` |  |
| apiServer.etcd.secretNames.ca | string | `"etcd-ca"` | secret name holding the CA of the etcd |
| apiServer.etcd.secretNames.client | string | `"etcd-client-tls"` | secret name of the etcd client certificates |
| apiServer.externalDNSName | string | `"apiserver-hostname"` | ingress dns name for the api server |
| apiServer.image.pullPolicy | string | `"IfNotPresent"` | kube-apiserver pull policy |
| apiServer.image.repository | string | `"k8s.gcr.io/kube-apiserver"` | kube-apiserver image location |
| apiServer.image.tag | string | `"v1.22.1"` | kube-apiserver image version tag |
| apiServer.podAnnotations | object | `{}` | annotations for the api server deployment |
| apiServer.replicas | int | `1` | kube-apiserver replica count |
| apiServer.serviceName | string | `"kube-apiserver"` | api server service name |
| apiServer.serviceURL | string | `"https://kube-apiserver:443"` | api server url |
| apiServer.tls.ca.secretName | string | `"kubernetes-ca"` | kubernetes cluster ca secret name |
| apiServer.tls.secretName | string | `"kube-apiserver-tls"` | api server tls secret name |
| apiServer.tls.staticToken | string | `"trallala"` | bearer token to access the api server |
| certificates.clusterIssuerName | string | `"selfsigned-issuer"` | self signed issuer name |
| certificates.createClusterIssuer | bool | `false` | create self signed issuer |
| controllerManager.contextName | string | `"default"` | kubeconfig context name |
| controllerManager.image.pullPolicy | string | `"IfNotPresent"` | kube-controller-manager pull policy |
| controllerManager.image.repository | string | `"k8s.gcr.io/kube-controller-manager"` | kube-controller-manager image location |
| controllerManager.image.tag | string | `"v1.22.1"` | kube-controller-manager image version tag |
| controllerManager.kubeconfigSecretName | string | `"kube-controller-manager-kubeconfig"` | secret name containing the kubeconfig for the controller manager |
| controllerManager.replicas | int | `1` | kube-controller-manager replica count |
| controllerManager.resources | object | `{}` | resource requests and limits |
| controllerManager.tls.secretName | string | `"kube-controller-manager-client-tls"` | secret name containing tls certificates of the controller manager |
| controllerManager.username | string | `"system:kube-controller-manager"` | username used in the kubeconfig of the controller manager |
| ingress.enable | bool | `false` | create an ingress for the api server |
| ingress.useTLS | bool | `false` | use tls for ingress |