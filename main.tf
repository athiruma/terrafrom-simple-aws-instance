provider "aws" {
    region = var.region_name
}

data "aws_ami" "provison_image" {
    most_recent = true

    filter {
        name   = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
    }

    filter {
        name = "virtualization-type"
        values = ["hvm"]
    }
    owners = ["099720109477"]
}

resource "aws_instance" "create_instance" {
    ami = data.aws_ami.provison_image.image_id
    instance_type =  var.instance_type
    tags = var.tags
}