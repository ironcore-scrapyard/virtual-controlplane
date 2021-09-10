# etcd

![Version: 0.1.1](https://img.shields.io/badge/Version-0.1.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 3.4.13](https://img.shields.io/badge/AppVersion-3.4.13-informational?style=flat-square)

Helm chart for deploying etcd through etcd druid.

**Homepage:** <https://github.com/onmetal/virtual-controlplane/>

## Source Code

* <https://github.com/onmetal/virtual-controlplane/charts/etcd>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| backup.compression | object | `{"enabled":false,"policy":"gzip"}` | backup bucket configuration store:   secretRef:     name: etcd-backup   container: mybackupcontainer   provider: aws   prefix: etcd-test |
| backup.compression.enabled | bool | `false` | enable/disable backup compression |
| backup.compression.policy | string | `"gzip"` | backup compression policy |
| backup.deltaSnapshotMemoryLimit | string | `"1Gi"` | delate snapshot memory limit |
| backup.deltaSnapshotPeriod | string | `"300s"` | delta snapshot period |
| backup.fullSnapshotSchedule | string | `"0 */24 * * *"` | schedule when to run the full backup |
| backup.garbageCollectionPeriod | string | `"43200s"` | garbage collection period |
| backup.garbageCollectionPolicy | string | `"Exponential"` | garbage collection policy |
| backup.port | int | `8080` | port of the backup sidecar |
| backup.resources | object | `{"limits":{"cpu":"500m","memory":"2Gi"},"requests":{"cpu":"23m","memory":"128Mi"}}` | resource requests and limits of the backup sidecar |
| etcd.clientPort | int | `2379` | etcd client port |
| etcd.defragmentationSchedule | string | `"0 */24 * * *"` | etcd defragmentation schedule |
| etcd.metrics | string | `"basic"` | etcd metrics type |
| etcd.quota | string | `"8Gi"` | etcd server quota |
| etcd.resources | object | `{"limits":{"cpu":"2500m","memory":"4Gi"},"requests":{"cpu":"500m","memory":"1000Mi"}}` | resource requests and limits of etcd |
| etcd.serverPort | int | `2380` | etcd server port |
| etcd.tls.enabled | bool | `true` | enable etcd server tls |
| replicas | int | `1` | replica count of the etcd statefulset |
| sharedConfig.autoCompactionMode | string | `"periodic"` | compaction mode |
| sharedConfig.autoCompactionRetention | string | `"30m"` | compaction retention |
| storageCapacity | string | `"1Gi"` | etcd disk size |
| storageClass | string | `"standard"` | etcd pvc storage class |