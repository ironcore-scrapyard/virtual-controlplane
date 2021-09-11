# Etcd

[etcd](https://etcd.io/) is the main backend storage of the Kubernetes API server. We will be using our [etcd-druid](/virtual-controlplane/usage/druid) operator to deploy a production ready etcd cluster.

## Installation

`etcd` can be installed via `helm install` into your Kubernetes cluster. Please make sure you have configured the `helm repo` as described [here](/usage/helm).

```shell
helm -n onmetal install etcd vc/etcd
```

If you want to overwrite the default `values.yaml` you can do so by providing a custom configuration.

```shell
helm -n onmetal install etcd vc/etcd -f VALUES_DIR/etcd-values.yaml
```

!!! note
    Please refer to the chart [README](https://github.com/onmetal/virtual-controlplane/tree/main/charts/etcd) for detailed information on the value parameters.

## Upgrade

To upgrade your `etcd` deployment run:

```shell
helm -n onmetal upgrade etcd vc/etcd -f VALUES_DIR/etcd-values.yaml
```

## Remove

To remove the installation run:

```shell
helm -n onmetal delete etcd
```