resource "aws_security_group" "master-node-yalkun" {
  provider    = aws.yalkun
  name        = "master-node-sg"
  description = "Default security group to allow inbound/outbound from the VPC"
  #vpc_id      = aws_vpc.master.id
  #depends_on  = [aws_vpc.master]

  dynamic "ingress" {
    for_each = var.master-ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
  /*  
  ingress {
    from_port   = var.server_port
    to_port     = var.server_port
    protocol    = "tcp"
    self        = false
    cidr_blocks = ["0.0.0.0/0"]
  }
*/
  egress {
    from_port   = "0"
    to_port     = "0"
    protocol    = "-1"
    self        = false
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "Master-node"
  }
}


resource "aws_security_group" "worker-node-yalkun" {
  provider    = aws.yalkun
  name        = "worker-node-sg"
  description = "Default security group to allow inbound/outbound from the VPC"
  #vpc_id      = aws_vpc.master.id
  #depends_on  = [aws_vpc.master]

  dynamic "ingress" {
    for_each = var.worker-ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  ingress {
    from_port   = 30000
    to_port     = 32767
    protocol    = "tcp"
    self        = false
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = "0"
    to_port     = "0"
    protocol    = "-1"
    self        = false
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "Worker-node"
  }
}

resource "aws_security_group" "default-gmail" {
  provider    = aws.gmail
  name        = "default-sg"
  description = "Default security group to allow inbound/outbound from the VPC"
  #vpc_id      = aws_vpc.master.id
  #depends_on  = [aws_vpc.master]
  ingress {
    from_port   = "22"
    to_port     = "22"
    protocol    = "tcp"
    self        = false
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = var.server_port
    to_port     = var.server_port
    protocol    = "tcp"
    self        = false
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = "0"
    to_port     = "0"
    protocol    = "-1"
    self        = false
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "Master-SG-Default"
  }
}

resource "aws_security_group" "default-protonmail" {
  provider    = aws.protonmail
  name        = "default-sg"
  description = "Default security group to allow inbound/outbound from the VPC"
  #vpc_id      = aws_vpc.master.id
  #depends_on  = [aws_vpc.master]
  ingress {
    from_port   = "22"
    to_port     = "22"
    protocol    = "tcp"
    self        = false
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = var.server_port
    to_port     = var.server_port
    protocol    = "tcp"
    self        = false
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = "0"
    to_port     = "0"
    protocol    = "-1"
    self        = false
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "Master-SG-Default"
  }
}