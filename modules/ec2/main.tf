resource "aws_instance" "linux" {
  ami                     = "ami-0747bdcabd34c712a" # us-east-1
  instance_type           = var.instance_type
  disable_api_termination = false
  subnet_id               = var.subnet_id
  key_name                = var.key_name
  vpc_security_group_ids  = var.vpc_security_group_ids



  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("linux-devops.pem")
    host        = self.public_ip
  }

  provisioner "local-exec" {
    command = "sleep 60"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update -y",
      "sudo apt install ca-certificates -y",
      "sudo apt-get install default-jdk apt-transport-https wget gnupg -y",
      "wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -",
      "sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'",
      "sudo apt-get update",
      "sudo apt-get install jenkins -y",
      "sudo systemctl enable jenkins"
    ]
  }
}