apt-get update
apt-get install -y ruby2.3 ruby2.3-dev git postgresql postgresql-client language-pack-touch-ja

update-alternatives --set ruby /usr/bin/ruby2.3 >/dev/null 2>&1
update-alternatives --set gem /usr/bin/gem2.3 >/dev/null 2>&1

gem install bundler
gem install rails

echo "postgres:postgres" | chpasswd

DB_NAME="rails_dev"
OWNER_NAME="rails_dev"

sudo -u postgres psql << EOS
CREATE USER rails_dev CREATEDB LOGIN ENCRYPTED PASSWORD 'rails_dev';
CREATE DATABASE ${DB_NAME} OWNER ${OWNER_NAME} ENCODING "UTF-8" LC_COLLATE "ja_JP.utf8" LC_CTYPE "ja_JP.utf8"  TEMPLATE template0;
EOS
