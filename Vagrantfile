Vagrant.configure("2") do |config|
    config.vm.box = "generic/ubuntu2004"

    config.vm.provider "virtualbox" do |v|
        v.name = "ubuntu2004"
    end

    config.vm.synced_folder "./donnee", "/var/www"


    config.vm.provision :shell, path: "provision/components/apache.sh"
    config.vm.provision :shell, path: "provision/components/php.sh"
    config.vm.provision :shell, path: "provision/components/postgres.sh"
    config.vm.provision :shell, path: "provision/components/npm.sh"

    # config.vm.provision :shell, path: "provision/components/mysql.sh"
    # config.vm.provision :shell, path: "provision/components/phpmyadmin.sh"
    # config.vm.provision :shell, path: "provision/components/yarn.sh"

    config.vm.provision :shell, inline: "echo 'cd /var/www' >> /home/vagrant/.profile"
end