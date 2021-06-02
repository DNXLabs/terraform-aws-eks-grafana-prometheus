resource "helm_release" "grafana" {
  depends_on = [var.mod_dependency, kubernetes_namespace.monitoring]
  count      = var.enabled ? 1 : 0
  name       = var.helm_chart_grafana_name
  chart      = var.helm_chart_grafana_release_name
  repository = var.helm_chart_grafana_repo
  version    = var.helm_chart_grafana_version
  namespace  = var.namespace

  set {
    name  = "adminPassword"
    value = "admin"
  }

  values = [
    file("${path.module}/grafana.yaml"),
    yamlencode(var.settings_grafana)
  ]

}