sudo yum install docker -y
sudo yum remove docker docker-common docker-selinux docker-engine -y
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo -y
sudo yum install docker-ce -y
sudo systemctl start docker