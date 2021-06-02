variable "enabled" {
  type        = bool
  default     = true
  description = "Variable indicating whether deployment is enabled."
}

variable "create_namespace" {
  type        = bool
  default     = true
  description = "Whether to create Kubernetes namespace with name defined by `namespace`."
}

variable "namespace" {
  type        = string
  default     = "monitoring-system"
  description = "Kubernetes namespace to deploy Monitoring stack Helm charts."
}

variable "mod_dependency" {
  default     = null
  description = "Dependence variable binds all AWS resources allocated by this module, dependent modules reference this variable."
}

# Prometheus

variable "settings_prometheus" {
  default     = {}
  description = "Additional settings which will be passed to Prometheus Helm chart values."
}

variable "helm_chart_prometheus_release_name" {
  type        = string
  default     = "prometheus"
  description = "Prometheus Helm release name"
}

variable "helm_chart_prometheus_name" {
  type        = string
  default     = "prometheus"
  description = "Prometheus Helm chart name to be installed"
}

variable "helm_chart_prometheus_version" {
  type        = string
  default     = "13.2.1"
  description = "Prometheus Helm chart version."
}

variable "helm_chart_prometheus_repo" {
  type        = string
  default     = "https://prometheus-community.github.io/helm-charts"
  description = "Prometheus repository name."
}

# Grafana

variable "settings_grafana" {
  default     = {}
  description = "Additional settings which will be passed to Grafana Helm chart values."
}

variable "helm_chart_grafana_release_name" {
  type        = string
  default     = "grafana"
  description = "Grafana Helm release name"
}

variable "helm_chart_grafana_name" {
  type        = string
  default     = "grafana"
  description = "Grafana Helm chart name to be installed"
}

variable "helm_chart_grafana_version" {
  type        = string
  default     = "6.1.17"
  description = "Grafana Helm chart version."
}

variable "helm_chart_grafana_repo" {
  type        = string
  default     = "https://grafana.github.io/helm-charts"
  description = "Grafana repository name."
}