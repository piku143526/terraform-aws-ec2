resource "aws_security_group" "sg2" {
  name        = var.sec_name
  description = var.sec_desc
  vpc_id      = var.vpc_id

  // To Allow SSH Transport
  ingress {
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
    cidr_blocks = ["0.0.0.0/0"]
  }

  // To Allow Port 80 Transport
  ingress {
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  lifecycle {
    create_before_destroy = true
  }
}


resource "aws_instance" "new" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name


  vpc_security_group_ids = [
    aws_security_group.sg2.id
  ]
  root_block_device {
    delete_on_termination = true
    volume_size           = 20
    volume_type           = "gp2"
  }
  tags = {
    Name = var.tag_name
  }

  depends_on = [aws_security_group.sg2]
}
