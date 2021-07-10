Vagrant.configure("2") do |config|
    config.vm.box = "generic/ubuntu2004"

    config.vm.provider "virtualbox" do |v|
        v.name = "ubuntu2004-2"
    end

    config.vm.synced_folder "./donnee/", "/var/www", owner: 'www-data', group: 'www-data', id: 'source', mount_options: ['dmode=777', 'fmode=777']

    config.vm.network "private_network", ip: "192.168.88.188"

    config.vm.provision :shell, path: "donnee/provision/components/apt.sh"
    config.vm.provision :shell, path: "donnee/provision/components/apache.sh"
    config.vm.provision :shell, path: "donnee/provision/components/php.sh"
    config.vm.provision :shell, path: "donnee/provision/components/postgres.sh"
    config.vm.provision :shell, path: "donnee/provision/components/npm.sh"

    # config.vm.provision :shell, path: "donnee/provision/components/mysql.sh"
    # config.vm.provision :shell, path: "donnee/provision/components/phpmyadmin.sh"
    # config.vm.provision :shell, path: "donnee/provision/components/yarn.sh"

    config.vm.provision :shell, inline: "echo 'cd /var/www' >> /home/vagrant/.profile"

end
