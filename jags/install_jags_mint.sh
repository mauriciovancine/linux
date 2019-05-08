# script install jags - linux mint

# mauricio vancine
# 08-05-2019

# information
# http://mcmc-jags.sourceforge.net/
# install: https://leobastos.wordpress.com/2018/02/18/instalando-o-jags/

# download
wget https://launchpad.net/ubuntu/+archive/primary/+sourcefiles/jags/4.3.0-2build1/jags_4.3.0.orig.tar.gz

# unzip
tar -xf jags_4.3.0.orig.tar.gz
rm jags_4.3.0.orig.tar.gz

# install
cd JAGS-4.3.0
./configure
make
sudo make install

# install rjags in r
sudo apt update
sudo apt install r-cran-rjags

# end --------------------------------------------------