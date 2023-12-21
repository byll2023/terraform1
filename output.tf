output "public-ip" {
  value = aws_instance.my_Ec2.public_ip
}
output "public-dns" {
  value = aws_instance.my_Ec2.public_dns
}
