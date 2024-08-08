resource "yandex_container_registry" "my-reg" {
  name = "my-registry"
  folder_id = "${var.folder_id}"
  labels = {
    my-label = "netology"
  }
}