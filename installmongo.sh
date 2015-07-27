sudo su
apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
echo "deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen" | tee -a /etc/apt/sources.list.d/10gen.list
echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.0 multiverse" |tee /etc/apt/sources.list.d/mongodb-org-3.0.list
apt-get -y update
apt-get install -y mongodb-org

echo 'Stop Mongo'
service mongod stop

echo 'Making directories'
mkdir /home/vagrant/mongo
mkdir /home/vagrant/mongo/data
mkdir /home/vagrant/mongo/log

echo 'Starting mongo with changed conf'
mongod --config /mongo/mongod.conf &
echo 'Mongo Started'

