# sa_k8s id
variable "sa_k8s_id" {
  default = "ajec408kksgo0nv6omni"
}

# IP
variable "host_ip" {
  default = "0.0.0.0/0"
}

variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  default     = "ru-central1-a"
}

# sa_json_credentials
variable "yc_sa_terraform_json_credentials" {}

