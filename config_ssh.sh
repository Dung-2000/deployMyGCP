SSH_Conf_path=/etc/ssh/sshd_config

sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' $SSH_Conf_path
sudo sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' $SSH_Conf_path
systemctl restart sshd
echo 'success'