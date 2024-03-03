resource "aws_instance" "jeknins" {

  ami           = "ami-0440d3b780d96b29d"
  instance_type = "t2.small"
  key_name      = "keypair"
  subnet_id     = aws_subnet.public_subnet1.id
  security_groups = [aws_security_group.jenkins-sg.id]
  user_data = file("jenkins.sh")

  tags = {
    Name = "jenkins"
  }
}