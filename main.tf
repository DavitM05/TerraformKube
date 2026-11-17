provider "aws" {}

resource "aws_security_group" "app_sg" {
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "app_sg"
  }
}

resource "aws_instance" "ec2" {
  ami = "ami-04a0530fbdaac2fd6"
  instance_type = "t3.micro"

  vpc_security_group_ids = [aws_security_group.app_sg.id]

  user_data_replace_on_change = true

  tags = {
    Name = "ubuntu"
  }
}



output "public_ip" {
  description = "EC2 Public IP Address"
  value       = aws_instance.ec2.public_ip
}

output "instance_id" {
  description = "EC2 Instance ID"
  value       = aws_instance.ec2.id
}
