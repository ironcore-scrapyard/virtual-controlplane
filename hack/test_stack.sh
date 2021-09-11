#!/bin/bash

# add repos
helm repo add jetstack https://charts.jetstack.io
helm repo add template-operator https://onmetal.github.io/template-operator/
helm repo update

# install charts
helm install \
  cert-manager jetstack/cert-manager \
  --namespace cert-manager \
  --create-namespace \
  --version v1.5.3 \
  --set installCRDs=true \
  --set extraArgs={"--enable-certificate-owner-ref=true"}

helm install \
  my-templ-op template-operator/template-operator \
  --namespace templates \
  --create-namespace

helm install \
  druid charts/druid \
  --namespace onmetal \
  --create-namespace

helm install \
  etcd charts/etcd \
  --namespace onmetal

helm install \
  vc charts/virtual-controlplane \
  --namespace onmetal