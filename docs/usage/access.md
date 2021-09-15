# Access the Virtual Control Plane API Server

The `template-operator` is generating a secret containing the initial `kubeconfig` with
`admin` privileges. It is located in the namespace of your [virtual-controlplane](/virtual-controlplane/usage/virtual-control-plane) installation.

## Get initial admin kubeconfig

The `kubeconfig` can be read from the cluster by running the following command:

```bash
kubectl -n onmetal get secret kubeconfig-for-admin \
    -o jsonpath={.data.kubeconfig} | base64 -d > kubeconfig
```

!!!note
        `base64` cli is needed to decrypt the base64 encoded secret values.

Here we assume, that `onmetal` is our namespace where we installed the virtual control plane components into.

## Accessing the cluster

The last thing we need to do is to set the `KUBECONFIG` environment variable to point to our newly created `kubeconfig` file:

```bash
export KUBECONFIG=kubeconfig
```

If everything worked out, we should now be able to access the cluster via:

```bash
kubectl get namespaces
```

--8<-- "hack/docs/abbreviations.md"
