# Helm Repository

The `virtual-controlplane` project comes with it's own Helm repository containing all Helm charts necessary to setup a virtual Kubernetes API server. It can be added to your Helm environment via:

```shell
helm repo add vc https://onmetal.github.io/virtual-controlplane/
```

To update the Helm repository:

```shell
helm repo update
```

You should now be able to see the content of the helm repository via:

```shell
helm search repo vc
```

An example output would look like this:

```shell
NAME         	CHART VERSION	APP VERSION	DESCRIPTION
vc/etcd-druid	0.1.0        	0.6.0      	Helm chart for etcd-druid.
```
