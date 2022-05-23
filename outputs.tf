output "Master1-pub-ip" { value = aws_instance.master1-ec2-yalkun.public_ip }
output "Worker1-pub-ip" { value = aws_instance.worker1-ec2-yalkun.public_ip }
output "Worker2-pub-ip" { value = aws_instance.worker2-ec2-yalkun.public_ip }

output "Master1-priv-ip" { value = aws_instance.master1-ec2-yalkun.private_ip }
output "Worker1-priv-ip" { value = aws_instance.worker1-ec2-yalkun.private_ip }
output "Worker2-priv-ip" { value = aws_instance.worker2-ec2-yalkun.private_ip }



/*
output "Worker1-ip" { value = aws_instance.ec2-gmail.public_ip }
output "Worker2-ip" { value = aws_instance.ec2-protonmail.public_ip }
*/