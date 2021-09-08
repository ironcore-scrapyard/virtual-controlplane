# CertManager

We are using the [cert-manager](https://cert-manager.io/) to generate and update TLS certificates. Please refer to the `cert-manager` [installation documentation](https://cert-manager.io/docs/installation/helm/) for details.

## Installation

Add the `cert-manager` helm repository:

```shell
helm repo add jetstack https://charts.jetstack.io
helm repo update
```

The `cert-manager` can be installed via:

```shell
helm install \
  cert-manager jetstack/cert-manager \
  --namespace cert-manager \
  --create-namespace \
  --version v1.5.3 \
  --set installCRDs=true \
  --set extraArgs={"--enable-certificate-owner-ref=true"}
```

## Upgrade

```shell
helm -n cert-manager upgrade cert-manager \
    jetstack/cert-manager -f VALUES_DIR/cert-manager-values.yaml
```

## Remove

To uninstall the `cert-manager` from your cluster run:

```shell
helm -n cert-manager delete cert-manager
```
