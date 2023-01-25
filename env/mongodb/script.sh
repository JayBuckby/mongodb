echo ----- Adding PGP Key -----
wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | sudo apt-key add -

echo ----- Add Repository and Create List File -----
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list

echo ----- Update Packages -----
sudo apt update

echo ----- Install MongoDB -----
sudo apt install -y mongodb-org

echo ----- MongoDB Check Version -----
mongod --version

echo ----- Updating Mongod Config -----
cat /etc/mongod.conf
sudo cp /home/vagrant/env/mongodb/mongod.conf /etc/mongod.conf
cat /etc/mongod.conf

echo ---------- Restart Mongo Service ----------
sudo systemctl restart mongod.service

echo ----- Startup MongoDB -----
sudo systemctl start mongod

# echo ----- Verifying Version -----
# sudo systemctl status mongod



# echo ----- Create
# sudo service mongod start
# sudo service mongod service

# mongo