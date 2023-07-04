resource "aws_instance" "web" {
  ami           = data.aws_ami.example.id
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0a3ac7c7cb8d81765"]

  tags = {
    Name = "Provisioner_sample"
  }
}

data "aws_ami" "example" {
  owners           = ["973714476881"]
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"

}


  connection {
    type     = "ssh"
    user     = "centos"
    password = "DevOps321"
    host     = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo labauto ansible",
      "ansible-pull -i https://github.com/Gadilasruthilaya/roboshopshell-ansible.git main.yml=frontend.yml env=dev -e ansible_username= centos -e ansible_password=DevOps321 ",
    ]
  }

