sudo su
apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
echo "deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen" | tee -a /etc/apt/sources.list.d/10gen.list
echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.0 multiverse" |tee /etc/apt/sources.list.d/mongodb-org-3.0.list
apt-get -y update
apt-get install -y mongodb-org

echo 'Copying Conf'
cp /mongo/mongod.conf /etc/mongod.conf
echo 'Restarting mongo with changed conf'
service mongod restart
echo 'Mongo Started'

