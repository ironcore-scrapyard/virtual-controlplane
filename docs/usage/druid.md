# Etcd Druid

The [etcd-druid](https://github.com/gardener/etcd-druid) is an operator which manages [etcd](https://etcd.io/) deployments inside a Kubernetes cluster.

## Installation

`etcd-druid` can be installed via `helm install` into your Kubernetes cluster. Please make sure you have configured the `helm repo` as described [here](/usage/helm).

```shell
helm -n onmetal install druid vc/etcd-druid
```

If you want to overwrite the default `values.yaml` you can do so by providing a custom configuration.

```shell
helm -n onmetal install druid vc/etcd-druid -f VALUES_DIR/druid-values.yaml
```

!!! note
    Please refer to the chart [readme](https://github.com/onmetal/virtual-controlplane/tree/main/charts/druid) for detailed information on the value parameters.

## Upgrade

To upgrade your `etcd-druid` deployment run:

```shell
helm -n onmetal upgrade druid vc/etcd-druid -f VALUES_DIR/druid-values.yaml
```

## Remove

To remove the installation run:

```shell
helm -n onmetal delete druid
```