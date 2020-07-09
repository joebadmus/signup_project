# data "template_file" "appserver_data" {
#   template = "${file("template/app.tpl")}"
# }

# resource "aws_instance" "app_server" {
#   ami                         = var.ami
#   key_name                    = var.key_name
#   instance_type               = var.instance_type
#   user_data                   = data.template_file.appserver_data.rendered
#   subnet_id                   = aws_subnet.subnet.id
#   vpc_security_group_ids      = [aws_security_group.app_server-sg.id]
#   associate_public_ip_address = true

#   tags = {
#     Name = "app_server"
#   }
# }

# resource "aws_security_group" "app_server-sg" {
#   name   = "app_server-security-group"
#   vpc_id = aws_vpc.main.id

#   ingress {
#     protocol    = "tcp"
#     from_port   = 22
#     to_port     = 22
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   ingress {
#     protocol    = "tcp"
#     from_port   = 5000
#     to_port     = 5000
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   egress {
#     protocol    = -1
#     from_port   = 0
#     to_port     = 0
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }
