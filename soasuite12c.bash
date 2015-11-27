sudo chown -R dockeruser:dockeruser ~/weblogic12c/logs
docker run -i -v ~/weblogic12c/domains:/opt/oracle/wlsdomains -v ~/weblogic12c/logs:/var/log/weblogic -e USER=$USER -e TZ=+03:00 -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --link db -p 7001:7001 -p 8001:8001 -p 8011:8011 --name=soasuite12c sciensa2/soasuite12c /opt/oracle/wlsdomains/domains/soa_domain/startWebLogic.sh
