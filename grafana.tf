# resource "aws_instance" "grafana" {

#   ami           = "ami-0440d3b780d96b29d"
#   instance_type = "t3.medium"
#   key_name      = "keypair"
#   subnet_id     = aws_subnet.public_subnet1.id

#   security_groups = [aws_security_group.grafana-sg.id]
#   user_data = file("grafana.sh")

#   tags = {
#     Name = "grafana"
#   }
# }