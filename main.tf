data "kubernetes_pod_v1" "pod_v1_lookup" {
  for_each = var.pod_v1_lookup


  metadata {
    annotations   = each.value.metadata.annotations
    generate_name = each.value.metadata.generate_name
    labels        = each.value.metadata.labels
    name          = each.value.metadata.name
    namespace     = each.value.metadata.namespace
  }
}

