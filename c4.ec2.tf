resource "aws_instance" "web" {
  ami = "ami-063d43db0594b521b"
  # ami           = var.my_ami
  instance_type = var.my_inst_type["0"]
  # availability_zone = "us-east-1a"
  subnet_id              = aws_subnet.my_subnet.id
  key_name               = var.my_key["first"]
#   user_data              = file("apache.sh")
  count                  = var.my_count
  vpc_security_group_ids = [aws_security_group.my_seg_http-new.id, aws_security_group.my_seg_https.id, aws_security_group.my_seg_ssh.id]
  tags = {
    Name    = "web-server-${count.index}"
    "buckt" = aws_s3_bucket.name.id
    "vpc"   = aws_vpc.my_vpc.id
  }
  depends_on = [aws_vpc.my_vpc]

  connection {
    type        = "ssh"
    host        = self.public_ip
    user        = "ec2-user"
    private_key = file("C:/Users/Lenovo/Downloads/test-aws.pem")
  }

  provisioner "remote-exec" {
    inline = [
      "sudo yum update",
      "sudo yum install -y nginx",
    ]
  }
}



