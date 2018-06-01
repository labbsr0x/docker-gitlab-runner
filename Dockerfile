FROM gitlab/gitlab-runner:ubuntu-v10.7.2
ENV DOCKERVERSION=18.03.0-ce
RUN curl -fsSLO https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKERVERSION}.tgz \
  && mv docker-${DOCKERVERSION}.tgz docker.tgz \
  && tar xzvf docker.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker.tgz

ENV DOCKERCOMPOSEVERSION=1.20.0
RUN curl -L https://github.com/docker/compose/releases/download/${DOCKERCOMPOSEVERSION}/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose \
  && chmod +x /usr/local/bin/docker-compose
