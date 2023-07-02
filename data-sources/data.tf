data "aws_ami" "example" {
  executable_users = ["self"]
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["self"]
}

output "ami_id" {
  value = data.aws_ami.example.id
}
