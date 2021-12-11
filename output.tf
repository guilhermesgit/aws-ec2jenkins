output "instance_ips" {
  
  value = aws_instance.linux.*.public_ip
}