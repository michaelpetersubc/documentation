provider "aws" {
  region     = "us-east-2"
}

resource "aws_instance" "mike_jupyter" {
  ami           = "ami-09922c12456eee846"
  instance_type = "t2.small"
  security_groups = ["${aws_security_group.allow_ssh.name}"]
  key_name = "my_aws_keys"
}

resource "aws_security_group" "allow_ssh" {
  name        = "allow ssh"
  description = "only ssh"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}


output "url" {
  value = "${aws_instance.mike_jupyter.public_dns}"
}
output "ip" {
  value = "${aws_instance.mike_jupyter.public_ip}"
}