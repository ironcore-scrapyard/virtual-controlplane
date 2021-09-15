# Virtual Control Plane

The `virtual-controlplane` helm chart is installing the `kube-apiserver` and `kube-controller-manager` which are the core
building blocks of our virtual Kubernetes cluster.

## Prerequisites

* Nginx ingress controller is installed in your Kubernetes cluster
* DNS is configured for your external Ingress load balancer

## Configuration

Before we begin with the installation it is recommended to override some of the default [values](https://github.com/onmetal/virtual-controlplane/blob/main/charts/virtual-controlplane/values.yaml).

For tha we need to create a `values.yaml` file containing the following entries.

```yaml
apiServer:
  externalDNSName: <external ingress DNS name>
  tls:
    staticToken: securePasswordToken
```

!!!note
        The helm installation will run through without changing those values. This might be OK if you deploy it into a local Minikube or Kind cluster. However you won't be able to access your cluster since the `Ingress` won't be configured correctly. Note, that there is a huge security risk as the static token can be guessed relatively easy exposing your API server to fraudulent access.

## Installation

The `virtual-controlplane` chart can be installed via:

```bash
helm install \
    vc vc/virtual-controlplane \
    --namespace onmetal \
    --create-namespace \
     -f VALUES_DIR/values.yaml
```

## Access API Server

Please follow the [Access API Server](/virtual-controlplane/usage/access) to access the virtual Kubernetes API server we just deployed.

## Upgrade

To upgrade your `virtual-controlplane` deployment run:

```shell
helm -n onmetal upgrade vc vc/virtual-controlplane -f VALUES_DIR/values.yaml
```

## Remove

To remove the installation run:

```shell
helm -n onmetal delete vc
```

--8<-- "hack/docs/abbreviations.md"
