module "instances" {
  for_each = var.instances
  source = "./ec2"
  name = each.key
}



variable "instances" {
  default = {

    frontend={}
    mongodb={}
    catalogue={}
    redis={}
    cart={}
    user={}
    mysql={}
    shipping={}
    rabbitmq={}
    payment={}
    dispatch={}


  }
}







