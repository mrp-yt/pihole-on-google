#! /usr/bin/bash
sudo su - &&
sudo apt-get update && 
sudo curl -sSL https://get.docker.com | sh && 
sudo curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/focal.gpg | sudo apt-key add - && 
sudo curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/focal.list | sudo tee /etc/apt/sources.list.d/tailscale.list && 
sudo apt-get update && 
sudo apt-get install tailscale && 
sudo tailscale up &&
sudo docker run -dit --name pihole -p 80:80 -p 53:53 -p 53:53/udp -p 67:67 -p 67:67/udp pihole/pihole &&
echo "All Done"