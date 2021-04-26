Vagrant.configure("2") do |config|
    config.vm.box = "hashicorp/bionic64"

    config.vm.provider "virtualbox" do |v|
        v.name = "Our amazing test project"
        v.memory = 4096
        v.cpus = 1
    end

    config.vm.synced_folder "./html", "/var/www/html"

    config.vm.network "private_network", ip: "192.168.88.188"

    config.vm.provision :shell, path: "provision/components/apache.sh"
    config.vm.provision :shell, path: "provision/components/php.sh"
    config.vm.provision :shell, path: "provision/components/mysql.sh"
    config.vm.provision :shell, path: "provision/components/phpmyadmin.sh"
    config.vm.provision :shell, path: "provision/components/yarn.sh"

    config.vm.provision :shell, inline: "echo 'cd /var/www' >> /home/vagrant/.profile"
end