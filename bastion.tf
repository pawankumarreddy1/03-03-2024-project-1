resource "aws_instance" "bastion" {

  ami           = "ami-0440d3b780d96b29d"
  instance_type = "t2.micro"
  key_name      = "keypair"
  subnet_id     = aws_subnet.public_subnet1.id

  security_groups = [aws_security_group.bastion-sg.id]
  tags = {
    Name = "bastion"
  }
}