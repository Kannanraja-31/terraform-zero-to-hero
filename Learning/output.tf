output "pub_ip" {
  value       = aws_instance.example.public_ip
  description = "showing public ip"
  sensitive   = false
}
output "pub_dns" {
  value       = aws_instance.example.public_dns
  description = "Showing the public dns"
  sensitive   = true
}
output "s3-arn" {
  value       = module.s3_bucket.s3_bucket_arn
  description = "showing the arn od s3 bucket"
}
output "path_out" {
  value = {
    workspace = terraform.workspace
    root_path = path.root
  }

}