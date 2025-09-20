output "pub_ip" {
  value = aws_instance.example.public_ip
  description = "showing public ip"
  sensitive = false
}
output "pub_dns" {
  value = aws_instance.example.public_dns
  description = "Showing the public dns"
  sensitive = true
}