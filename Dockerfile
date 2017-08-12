FROM jenkins:latest
USER root
RUN apt-get -yqq update 
RUN curl -sSL https://get.docker.com/ | sh
RUN apt-get install -y ansible
RUN echo "[web]" > /etc/ansible/hosts
RUN echo "ip" >> /etc/ansible/hosts
RUN usermod -aG docker jenkins
USER jenkins
