# --------------------- docker pull secret for K8S --------------------

locals {
  docker_pull_secret = {
    ".dockerconfigjson" = jsonencode({
      "auths" : {
        "${var.hub}" : {
          email    = var.docker_email
          username = var.docker_username
          password = trimspace(var.docker_password)
          auth     = base64encode(join(":", [var.docker_username, var.docker_password]))
        }
      }
    })
  }
}

resource "kubernetes_secret" "image_pull_secrets" {
  for_each = var.namespaces
  metadata {
    name      = "docker-pull-secret"
    namespace = each.value
  }
  data = local.docker_pull_secret

  type = "kubernetes.io/dockerconfigjson"
}
