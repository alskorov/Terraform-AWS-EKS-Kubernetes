resource "aws_security_group" "security-group" {
  vpc_id      = aws_vpc.main.id
  
  description = "Allowing Jenkins, Sonarqube, SSH Access, ArgoCD"

  ingress = [
    for port in [22, 8080, 9000, 9090, 80] : {
      description      = "TLS from VPC"
      from_port        = port
      to_port          = port
      protocol         = "tcp"
      ipv6_cidr_blocks = []
      self             = false
      prefix_list_ids  = []
      security_groups  = []
      #restrict access to your IP or 0.0.0.0/0 to ALL
      cidr_blocks      = ["87.70.172.247/32"]
    }
  ]

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = local.sg-name
  }
}