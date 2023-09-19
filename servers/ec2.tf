// EC2 - EAST (Padrao)
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  owners = ["099720109477"]
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  tags = {
    Name = "Teste"
  }
}

# // EC2 - WEST region
# data "aws_ami" "ubuntu-west" {
#   provider = aws.west
#   most_recent = true

#   filter {
#     name = "name"
#     values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
#   }

#   owners = ["099720109477"]
# }

# resource "aws_instance" "web-west" {
#   provider = aws.west
#   ami           = var.image_id # data.aws_ami.ubuntu-west.id
#   instance_type = "t2.micro"

#   tags = {
#     Name = "Teste"
#   }
# }
