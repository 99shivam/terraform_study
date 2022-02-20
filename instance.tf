resource "aws_instance" "jump_host" {
    ami = var.AMIS[var.AWS_REGION]
    instance_type = "t2.micro"

    subnet_id = aws_subnet.main-public-1.id
    vpc_security_group_ids = [aws_security_group.allow-ssh.id]

    #the public ssh key
    key_name = aws_key_pair.mykeypair.key_name

    user_data = <<EOF
    #!/bin/bash
    useradd admin
    echo "a_str0ng_p4SS" | passwd admin --stdin


    EOF

}
