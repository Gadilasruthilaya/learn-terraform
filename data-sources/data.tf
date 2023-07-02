data "aws_ami" "example" {
  executable_users =["973714476881"]
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["self"]

}

output "ami_id" {
  value = data.aws_ami.example.id
}
