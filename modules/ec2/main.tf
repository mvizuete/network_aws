
resource "aws_instance" "public_instance" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  key_name               = data.aws_key_pair.key.key_name
  vpc_security_group_ids = [var.vpc_security_group_id]

  # user_data              = <<-EOF
  #   #!/bin/bash
  #   echo "Este es un mensaje" > ~/mensaje.txt
  # EOF
  # user_data = file("scripts/user_data.sh")
  # provisioner "local-exec" {
  #   command = "echo instancia creada con IP ${aws_instance.public_instance.public_ip} >> datos_instancia.txt"
  # }

  # provisioner "local-exec" {
  #   when    = destroy
  #   command = "echo instancia ${self.public_ip} destruida >> datos_instancia.txt"
  # }
}
