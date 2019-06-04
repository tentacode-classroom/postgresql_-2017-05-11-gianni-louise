#Download sources 
touch /etc/apt/sources.list.d/pgdg.list 
echo "deb http://apt.postgresql.org/pub/repos/apt stretch-pgdg main" > /etc/apt/sources.list.d/pgdg.list 
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add - 
sudo apt-get update 

#Install PostGreSQL 
apt-get install  postgresql-11
clear
psql --version
