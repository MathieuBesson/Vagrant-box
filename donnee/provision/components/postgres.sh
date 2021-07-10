# https://linoxide.com/install-postgresql-in-ubuntu-20-04/


echo "-------------------- installing postgres"
sudo apt-get install -y postgresql postgresql-contrib

sudo mkdir -p /usr/local/pgsql/data
sudo chown postgres:postgres /usr/local/pgsql/data

echo "-------------------- creating postgres admin role with password p@ss0ver"
sudo su postgres -c "psql -c \"CREATE ROLE admin SUPERUSER LOGIN PASSWORD 'p@ss0ver'\" "

#echo "-------------------- creating your_db database"
#sudo su postgres -c "createdb -E UTF8 -T template0 --locale=en_US.utf8 -O admin your_db"

# gotta put this at the end because it reboots and then all commands are lost
sudo apt-get upgrade -y
echo "-------------------- installation successful!"

# Lancement des services de postgres 
sudo systemctl start postgresql.service

# Démarrage de postgres au démarrage de la machine 
sudo systemctl enable postgresql.service