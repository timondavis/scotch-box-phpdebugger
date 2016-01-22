cd /home/vagrant
wget https://github.com/joonty/vdebug/archive/master.zip
mkdir .vim
mkdir .vim/plugin
unzip master.zip
mv vdebug-master/plugin/* .vim/plugin/
rm -rf vdebug-master
rm master.zip
