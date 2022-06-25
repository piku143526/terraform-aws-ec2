output "ec2instance" {
  value = aws_instance.inst.public_ip
}
