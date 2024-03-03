resource "aws_instance" "black_box" {

  ami           = "ami-0440d3b780d96b29d"
  instance_type = "t2.micro"
  key_name      = "keypair"
  subnet_id     = aws_subnet.public_subnet1.id
  security_groups = [aws_security_group.black_box-sg.id]
  user_data = file("black_box.sh")

  tags = {
    Name = "black_box"
  }
}