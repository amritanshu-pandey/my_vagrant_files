echo 'Starting provisioning on machine: '`hostname`
#curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
#sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
#sudo apt-get update
#sudo apt-get install -y docker-ce
cd ~
sudo echo -e "\n192.168.56.101 puppet" >> /etc/hosts
wget https://apt.puppetlabs.com/puppetlabs-release-pc1-xenial.deb
sudo dpkg -i puppetlabs-release-pc1-xenial.deb
sudo apt-get update
sudo apt-get install puppet-agent
sudo systemctl enable puppet
sudo systemctl start puppet

echo 'Provisioning completed on machine: '`hostname`
