
apt-get -q update
apt-get -y -q install curl

# install RVM
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
# ユーザーvagrantのローカルパスにrvmをインストール
sudo -u vagrant curl -sSL https://get.rvm.io | bash -s stable

sudo -u vagrant rvm install 2.3
sudo -u vagrant rvm use 2.3
