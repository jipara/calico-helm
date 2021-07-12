
variable "kubernetesProvider" {
  default = "EKS"
}

resource "helm_release" "calico" {
  chart      = "tigera-operator"
  name       = "calico"
  repository = "https://docs.projectcalico.org/charts"
  set {
    name  = "installation.kubernetesProvider"
    value = var.kubernetesProvider
  }
}
