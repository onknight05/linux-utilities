sudo apt update
sudo apt install -y openssh-server openssh-client
sudo systemctl enable ssh
sudo systemctl start ssh
sudo systemctl status ssh
sudo ufw allow ssh
