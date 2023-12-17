module "instances" {
  for_each = var.instances
  source = "./ec2"
  name = each.key
  region = "us-east-1"
}

variable "instances" {
  default = {
    frontend = {}
    mongodb={}
    catalogue={}
    redis={}
    user={}
    cart={}
    mysql={}
    shipping={}
    rabbitmq={}
    payment={}
    dispatch={}
  }
}

