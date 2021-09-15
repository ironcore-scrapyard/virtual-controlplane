# Template Operator

The [template-operator](https://github.com/onmetal/template-operator) is used to create derived objects from other Kubernetes objects.
It is for example possible to create a `Secret` containing the `kubeconfig` from other `Secrets` or `ConfigMaps` which contains the TLS
certificates and other information needed to generate a `kubeconfig`.

## Installation

Add the `template-operator` helm chart repository:

```bash
helm repo add template-operator https://onmetal.github.io/template-operator/
helm repo update
```

The `template-operator` helm chart can be installed via:

```bash
helm install \
    template-operator template-operator/template-operator \
    --namespace template-operator \
    --create-namespace
```

## Configuration

The `template-operator` chart can be configured by overriding the [default values](https://github.com/onmetal/template-operator/blob/main/charts/template-operator/values.yaml).

One important configuration point are the RBAC rules, where we need to specify which objects the `template-operator` is allowed
to watch and modify.

Here an example as defined in the default `values.yaml` to allow to watch and modify `Secrets` and `ConfigMaps` in your cluster.

```yaml
rbac:
  adminGroupResouces:
    - groups:
      - ""
      resources:
      - secrets
      - configmaps
```

## Upgrade

To upgrade your `template-operator` deployment run:

```shell
helm -n template-operator upgrade template-operator \
    template-operator/template-operator \
    -f VALUES_DIR/template-operator-values.yaml
```

## Remove

To uninstall the `template-operator` from your cluster run:

```shell
helm -n template-operator delete template-operator
```

--8<-- "hack/docs/abbreviations.md"
