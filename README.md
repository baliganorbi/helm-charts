# Test Python WebApp Helm Repository

This is a test Helm repository for a python web application. The goal is to see how to create a Helm Chart repository using GitHub Actions.

## Get started

Add this repository to Helm.

```
helm repo add my-helm-charts https://baliganorbi.github.io/helm-charts
```

Install an instance from testwebapp.

```
helm install mywebapp baliganorbi/testwebapp
```
