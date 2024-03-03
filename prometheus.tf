# resource "aws_instance" "promithius" {

#   ami           = "ami-0440d3b780d96b29d"
#   instance_type = "t2.micro"
#   key_name      = "keypair"
#   subnet_id     = aws_subnet.public_subnet1.id
#   security_groups = [aws_security_group.promithius-sg.id]
#   user_data = file("prometheus.sh")

#   tags = {
#     Name = "promithius"
#   }
# }