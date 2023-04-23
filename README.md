# My Test Helm Repository

This is a test Helm repository for hosting my custom Helm charts. The GitHub action turns this repo into a self-hosted Helm chart repo, using [helm/chart-releaser](https://github.com/helm/chart-releaser) CLI tool. 

## Charts

| Chart Name  | Description |
| ----------- | ----------- |
| getting-started | Official Helm Getting Started guide |
| testwebapp | A python test web application.  |


## Usage

[Helm](https://helm.sh) must be installed to use the charts.  Please refer to Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:

```
helm repo add my-helm-charts https://baliganorbi.github.io/helm-charts
```

If you had already added this repo earlier, run `helm repo update` to retrieve the latest versions of the packages. You can then run `helm search repo my-helm-charts` to see the charts.

To install the <chart-name> chart:

```
helm install my-<chart-name> my-helm-charts/<chart-name>
```

To uninstall the chart:

```
helm delete my-<chart-name>
```