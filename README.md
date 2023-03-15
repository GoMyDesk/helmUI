# helm-charts
## Usage

[Helm](https://helm.sh) must be installed to use the charts.  Please refer to
Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:

  helm repo add ui https://gomydesk.github.io/helmUI

If you had already added this repo earlier, run `helm repo update` to retrieve
the latest versions of the packages.  You can then run `helm search repo
ui` to see the charts.

To install the ui chart:

    helm install gomydesk-ui ui/ui

To uninstall the chart:

    helm delete gomydesk-ui

For full chart documentation see the [chart's README](charts/ui/README.md).
