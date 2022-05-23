#-----------------------------------------------------------
# Master keys for every account
#-----------------------------------------------------------
resource "aws_key_pair" "master-key-yalkun" {
  provider   = aws.yalkun
  key_name   = "t420"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_key_pair" "master-key-gmail" {
  provider   = aws.gmail
  key_name   = "t420"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_key_pair" "master-key-protonmail" {
  provider   = aws.protonmail
  key_name   = "t420"
  public_key = file("~/.ssh/id_rsa.pub")
}


#-----------------------------------------------------------
# AMI for every account
#-----------------------------------------------------------
data "aws_ami" "ubuntu-yalkun" {
  provider    = aws.yalkun
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

data "aws_ami" "ubuntu-gmail" {
  provider    = aws.gmail
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

data "aws_ami" "ubuntu-protonmail" {
  provider    = aws.protonmail
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}




