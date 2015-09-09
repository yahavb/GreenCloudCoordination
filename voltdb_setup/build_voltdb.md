use the wiki https://github.com/VoltDB/voltdb/wiki/Building-VoltDB

In this project we use Ubuntu. The preperation of th ehost includes:
sudo apt-get -y install ant build-essential ant-optional default-jdk python \
    valgrind ntp ccache git-arch git-completion git-core git-svn git-doc \
    git-email python-httplib2 python-setuptools python-dev apt-show-versions

Then we get the code from:
git clone https://github.com/VoltDB/voltdb.git

Then we build it using the ant script

cd voltdb
ant

make sure the javac and java is 1.7, if not (less than 1.7):
remove the soft link to the old javac and java 
sudo rm /usr/bin/javac
sudo rm /usr/bin/java
and then 
sudo ln -s /usr/lib/jvm/java-7-openjdk-amd64/bin/javac /usr/bin/javac
sudo ln -s /usr/lib/jvm/java-7-openjdk-amd64/bin/java /usr/bin/java
