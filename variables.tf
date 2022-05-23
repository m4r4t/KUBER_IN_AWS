variable "profile" {
  type        = string
  default     = "default"
  description = "description"
}

variable "region-main-yalkun" {
  type    = string
  default = "eu-central-1"
}

variable "region-main-gmail" {
  type    = string
  default = "eu-west-1"
}

variable "region-main-protonmail" {
  type    = string
  default = "eu-west-2"
}

variable "instance-type" {
  type = string
  #default = "t3.micro" # 2 vCPU, 1 GB
  default = "t3.small" # 2 vCPU, 2 GB
}

variable "server_port" {
  type    = number
  default = 8080
}

variable "master-ports" {
  type    = list(number)
  default = [22, 6443, 2379, 2380, 10250, 10252, 10255]
}

variable "worker-ports" {
  type    = list(number)
  default = [22, 10250, 10255]
}

variable "yalkun_access_key" { type = string }
variable "yalkun_secret_key" { type = string }
variable "gmail_access_key" { type = string }
variable "gmail_secret_key" { type = string }
variable "protonmail_access_key" { type = string }
variable "protonmail_secret_key" { type = string }