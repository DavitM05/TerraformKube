provider "aws" {}

resource "aws_instance" "ec2" {
  ami = "ami-04a0530fbdaac2fd6"
  instance_type = "t3.micro"

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