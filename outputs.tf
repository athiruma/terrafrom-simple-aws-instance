output "image_id" {
  value = data.aws_ami.provison_image.image_id
}

output "instance_id" {
  value = aws_instance.create_instance.id
}