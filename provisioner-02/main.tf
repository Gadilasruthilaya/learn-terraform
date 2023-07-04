resource "aws_instance" "web" {
  ami           = data.aws_ami.example.id
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0a3ac7c7cb8d81765"]

  tags = {
    Name = "Provisioner_sample"
  }
}


  provisioner "remote-exec" {
    connection {
      type     = "ssh"
      user     = "centos"
      password = "DevOps321"
      host     = self.public_ip
    }

    inline = [
      "sudo labauto ansible",
      "ansible-pull -i localhost, u https://github.com/Gadilasruthilaya/roboshopshell-ansible.git main.yml -e role_name=frontend.yml -e env=dev  ",
    ]
  }

data "aws_ami" "example" {
  owners           = ["973714476881"]
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"

}