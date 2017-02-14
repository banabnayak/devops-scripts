cd /opt/workspace/test.edureka.com/code && git checkout master && git stash && git pull && git reset --hard origin/master && git stash clear
ansible webserver -m shell -a "rm -rfv /var/www/html/index.nginx-debian.html"
ansible webserver -m copy -a "src =/opt/workspace/test.edureka.com/code/sampleweb-app/index.nginx-debian.html dest=/var/www/html"
ansible webserver -m shell -a "service nginx restart"
