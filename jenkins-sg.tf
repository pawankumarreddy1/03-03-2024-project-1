# resource "aws_security_group" "jenkins-sg" {
#   vpc_id      = aws_vpc.vpc1.id
#   description = "this is using for jenkins"
#   ingress {
#     protocol        = "tcp"
#     from_port       = 22
#     to_port         = 22
#     cidr_blocks      = ["0.0.0.0/0"]
#   }
#   ingress {
#     protocol    = "tcp"
#     from_port   = 8080
#     to_port     = 8080
#     cidr_blocks = ["0.0.0.0/0"]
#   }
#   egress {
#     protocol         = "-1"
#     from_port        = 0
#     to_port          = 0
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }

# }