# resource "aws_instance" "sonarqube" {

#   ami           = "ami-0c7217cdde317cfec"
#   instance_type = "t3.small"
#   key_name      = "keypair"
#   subnet_id     = aws_subnet.public_subnet1.id
#   security_groups = [aws_security_group.sonarqube-sg.id]
#   user_data = file("sonarqube.sh")

#   tags = {
#     Name = "sonarqube"
#   }
# }