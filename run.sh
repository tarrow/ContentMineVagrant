#Keep quiet and add then update required repositories
export DEBIAN_FRONTEND=noninteractive
APT_SILENT_OPTIONS='-q -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold"'
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update -q

#Get standard packages for VC and maven
sudo apt-get install $APT_SILENT_OPTIONS maven2 git mercurial

#Silently install oracle java (openjdk not sufficient)
echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections
sudo apt-get install $APT_SILENT_OPTIONS oracle-java8-installer
