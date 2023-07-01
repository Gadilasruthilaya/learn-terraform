variable "sample"{
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

# plain

variable "course" {
  default = "devops traning"
}

output "course" {
  value = var.course
}

#list
variable "courses" {
  default = [
  "devops",
  "aws",
  "python"
  ]
}

output "courses" {
  value = var.courses

}

output "courses1" {
  value = var.courses[2]
}

#map

variable "course-details" {
  default = {
  devops = {
      name="devops"
      timing="7.am"
    }
  aws = {
      name= "aws"
      timing="6am"
    }
  }
}

output "course-details" {
  value = var.course-details

}

output "course-details1" {
  value = var.course-details["devops"]
}

