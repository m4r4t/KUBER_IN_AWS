resource "aws_instance" "master1-ec2-yalkun" {
  provider      = aws.yalkun
  ami           = data.aws_ami.ubuntu-yalkun.id
  instance_type = "t3.small"
  key_name      = aws_key_pair.master-key-yalkun.key_name
  #subnet_id              = aws_subnet.master_public_subnets[0].id
  vpc_security_group_ids = [aws_security_group.master-node-yalkun.id]
  tags = {
    Name = "Master1"
  }
}

resource "aws_instance" "worker1-ec2-yalkun" {
  provider      = aws.yalkun
  ami           = data.aws_ami.ubuntu-yalkun.id
  instance_type = "t3.small"
  key_name      = aws_key_pair.master-key-yalkun.key_name
  #subnet_id              = aws_subnet.master_public_subnets[0].id
  vpc_security_group_ids = [aws_security_group.worker-node-yalkun.id]
  tags = {
    Name = "Worker1"
  }
}

resource "aws_instance" "worker2-ec2-yalkun" {
  provider      = aws.yalkun
  ami           = data.aws_ami.ubuntu-yalkun.id
  instance_type = "t3.small"
  key_name      = aws_key_pair.master-key-yalkun.key_name
  #subnet_id              = aws_subnet.master_public_subnets[0].id
  vpc_security_group_ids = [aws_security_group.worker-node-yalkun.id]
  tags = {
    Name = "Worker2"
  }
}



/*
resource "aws_instance" "ec2-gmail" {
  provider      = aws.gmail
  ami           = data.aws_ami.ubuntu-gmail.id
  instance_type = var.instance-type
  key_name      = aws_key_pair.master-key-gmail.key_name
  #subnet_id              = aws_subnet.master_public_subnets[0].id
  vpc_security_group_ids = [aws_security_group.default-gmail.id]
  tags = {
    Name = "EC2 Gmail's account"
  }
}

resource "aws_instance" "ec2-protonmail" {
  provider      = aws.protonmail
  ami           = data.aws_ami.ubuntu-protonmail.id
  instance_type = var.instance-type
  key_name      = aws_key_pair.master-key-protonmail.key_name
  #subnet_id              = aws_subnet.master_public_subnets[0].id
  vpc_security_group_ids = [aws_security_group.default-protonmail.id]
  tags = {
    Name = "EC2 Protonmail's account"
  }
}
*/
