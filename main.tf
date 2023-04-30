/* resource "aws_instance" "demo-instance" {
  ami = "ami-0bb6af715826253bf"
  instance_type = "t3a.small"
  vpc_security_group_ids = ["sg-036e9bfb37a180657"]
  iam_instance_profile = aws_iam_instance_profile.demo-profile.name
  tags = {
      Name = "Instance-1"
  }


provisioner "remote-exec" {
  connection {
    host = aws_instance.demo-instance.public_ip
    user = "centos"
    password = "DevOps321"
  }

  inline = [
    "sudo git clone https://github.com/sai-pranay-teja/docker-and-kubernetes-practise.git",
    "sudo bash docker-and-kubernetes-practise/docker-install.sh",
    "sudo bash docker-and-kubernetes-practise/kubectl.sh",
    "sudo bash docker-and-kubernetes-practise/aws-iam-authenticator.sh"
    #also should do aws configure commands
    
  ]
  
}
}

output "public-ip"{
  value = aws_instance.demo-instance.public_ip
} */
