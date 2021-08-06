resource "kubernetes_namespace" "grafana" {
  depends_on = [var.mod_dependency]
  count      = (var.enabled && var.create_namespace_grafana && var.namespace_grafana != "kube-system") ? 1 : 0

  metadata {
    name = var.namespace_grafana
  }
}

resource "kubernetes_namespace" "prometheus" {
  depends_on = [var.mod_dependency]
  count      = (var.enabled && var.create_namespace_prometheus && var.namespace_prometheus != "kube-system") ? 1 : 0

  metadata {
    name = var.namespace_prometheus
  }
}