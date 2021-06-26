# https://linoxide.com/install-postgresql-in-ubuntu-20-04/

# Mise à jour du repos local 
sudo apt update

# Installation de postgres
sudo apt install postgresql postgresql-contrib

# Lancement des services de postgres 
sudo systemctl start postgresql.service

# Démarrage de postgres au démarrage de la machine 
sudo systemctl enable postgresql.service