docker run --detach \
  --hostname gitlab.example.com \
  --publish 443:443 \
  --publish 8929:80 \
  --publish 2289:22 \
  --name gitlab \
  --restart always \
  --volume /srv/gitlab/config:/etc/gitlab \
  --volume /srv/gitlab/logs:/var/log/gitlab \
  --volume /srv/gitlab/data:/var/opt/gitlab \
 gitlab/gitlab-ce:latest
