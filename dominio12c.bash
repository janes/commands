sudo useradd -u 1000 dockeruser
mkdir -p ~/weblogic12c 
sudo chown -R dockeruser:dockeruser ~/weblogic12c
docker run -i -v ~/weblogic12c:/opt/oracle -e USER=$USER --link db sciensa2/soasuite12c-domain
