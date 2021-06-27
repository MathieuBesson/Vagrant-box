# https://linoxide.com/install-postgresql-in-ubuntu-20-04/

# Installation de postgres
sudo apt-get install -y postgresql postgresql-contrib

# Lancement des services de postgres 
sudo systemctl start postgresql.service

# Démarrage de postgres au démarrage de la machine 
sudo systemctl enable postgresql.service