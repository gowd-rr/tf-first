resource "aws_security_group" "my_seg_ssh" {
  name        = "ssh-${terraform.workspace}"
  description = "this is for ssh only"
  # count = terraform.workspace == "default" ? 1 : 1
  vpc_id = aws_vpc.my_vpc.id
  ingress {
    description = "this is aws ssh ingress"
    from_port   = "22"
    to_port     = "22"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "this is ssh egress"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "testin"
  }
}


resource "aws_security_group" "my_seg_https" {
  name        = "https-${terraform.workspace}"
  description = "this is for ssh only"
  vpc_id      = aws_vpc.my_vpc.id
  ingress {
    description = "this is aws https ingress"
    from_port   = "443"
    to_port     = "443"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "this is https egress"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "testindsd"
  }
}

resource "aws_security_group" "my_seg_http-new" {
  name        = "http-${terraform.workspace}"
  description = "this is for http only"
  vpc_id      = aws_vpc.my_vpc.id
  ingress {
    description = "this is aws http ingress"
    from_port   = "80"
    to_port     = "80"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "this is http egress"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}