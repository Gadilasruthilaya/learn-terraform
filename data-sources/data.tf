data "aws_ami" "example" {
  owners =["973714476881"]
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"

}

output "ami_id" {
  value = data.aws_ami.example.id
}
