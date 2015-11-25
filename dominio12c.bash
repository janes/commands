sudo useradd -u 1000 dockeruser
mkdir -p ~/weblogic12c/domains
sudo chown -R dockeruser:dockeruser ~/weblogic12c
sudo chmod 777 ~/weblogic12c
docker run -i -v ~/weblogic12c/domains:/opt/oracle/wlsdomains/domains -e USER=$USER --link db sciensa2/soasuite12c-domain
