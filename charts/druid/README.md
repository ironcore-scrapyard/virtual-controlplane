# etcd-druid

![Version: 0.1.2](https://img.shields.io/badge/Version-0.1.2-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.6.0](https://img.shields.io/badge/AppVersion-0.6.0-informational?style=flat-square)

Helm chart for etcd-druid.

**Homepage:** <https://github.com/onmetal/virtual-controlplane/>

## Source Code

* <https://github.com/onmetal/virtual-controlplane/charts/druid>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| druid.ignoreOperationAnnotation | bool | `true` | ignore operation annotation |
| druid.leaderElection | bool | `true` | perform leader election |
| druid.port | int | `9569` | container port |
| druid.replicaCount | int | `1` | pod instance count |
| druid.resources | object | `{}` | resource requests and limits for deployment |
| druid.workerCount | int | `3` | number of workers |
| image.pullPolicy | string | `"IfNotPresent"` | pull policy |
| image.repository | string | `"eu.gcr.io/gardener-project/gardener/etcd-druid"` | image location |
| image.tag | string | `"v0.6.0"` | image version tag |
| imagePullSecrets | list | `[]` | image pull secrets |
| serviceAccount | string | `"etcd-druid"` | service account to use |