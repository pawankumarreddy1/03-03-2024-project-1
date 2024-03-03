resource "aws_instance" "nexus" {

  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t3.medium"
  key_name      = "keypair"
  subnet_id     = aws_subnet.public_subnet1.id

  security_groups = [aws_security_group.nexus-sg.id]
  user_data = file("nexus.sh")

  tags = {
    Name = "nexus"
  }
}