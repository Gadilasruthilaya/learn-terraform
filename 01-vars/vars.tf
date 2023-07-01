varible "sample"{
  default= " hello world"
}

variable "sample1" {
  default = 100
}

output "sample" {
  value = var.sample
}

output "sample1" {
  value = var.sample1
}