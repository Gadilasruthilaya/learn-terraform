variable "class" {
  default = "devops"

}

# to print the variable you can use output and also you can use some string functions like upper and lower

output "class" {
  value = upper(var.class)
}

variable "instances" {
  default = ["frontend", "cart","catalogue"]

}

# to print them you can iterate them also use element function as well
#element function looks in the list with the given index and print the value.

output "instances" {
  value = element(var.instances,length(var.instances) )
}

variable "classes" {
  default = {
    devops= {
      name = "devops",
      topics= ["jenkins","docker"]
    }
    aws={
      name="aws"
    }
  }
}

# for maps in list we can use lookup when we are not sure with the value or key present in map. basically it looks up the map for value

output "devops_topics" {
  value = lookup(lookup(var.classes, "devops", null ), "topics", null)
}

output "aws_topics" {
  value = lookup(lookup(var.classes, "aws", null ), "topics", no topics for aws)
}