#! /usr/bin/bash
sudo apt-get update && 
echo "-----------------"
echo "Installing Docker"
echo "-----------------"
sleep 5 &&
sudo curl -sSL https://get.docker.com | sh && 
echo "-----------------"
echo "Docker Installed"
echo "-----------------"
sudo curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/focal.gpg | sudo apt-key add - && 
sudo curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/focal.list | sudo tee /etc/apt/sources.list.d/tailscale.list && 
sudo apt-get update && 
echo "---------------------"
echo "Installing Tail Scale"
echo "---------------------"
sleep 5 &&
sudo apt-get install tailscale && 
echo "-----------------------------------------"
echo "Be ready to approve Tail Scale Connection"
echo "-----------------------------------------"
sleep 5 &&
sudo tailscale up &&
echo "-----------------
echo "Installing PiHole" 
sleep 5
sudo docker run -dit --name pihole -p 80:80 -p 53:53 -p 53:53/udp -p 67:67 -p 67:67/udp pihole/pihole:latest
echo "PiHole Has been installed" 
echo "Pihole Installed"
echo "Access Pihole dashboard https://[tailscale_assigned_ip]:8/admin"
