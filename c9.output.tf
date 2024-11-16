output "public_ip" {
  description = "This is valur of it"
  value       = aws_instance.web.*.public_ip
  # sensitive   = true
}

output "public_dns" {
  description = "This is valur of it"
  value       = aws_instance.web.*.public_dns
  sensitive   = true
}


output "private_ip" {
  description = "This is valur of it"
  value       = aws_instance.web.*.private_ip
  sensitive   = true
}

output "private_dns" {
  description = "This is valur of it"
  value       = aws_instance.web.*.private_dns
}

output "s3_name" {
  value = aws_s3_bucket.name.bucket
}

output "vpc_name" {
  value = aws_vpc.my_vpc.id
}

output "aws_security_group_name" {
  value = toset([aws_security_group.my_seg_http-new.name, aws_security_group.my_seg_https.name])
}