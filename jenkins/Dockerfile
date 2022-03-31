FROM jenkins/jenkins:lts-jdk11

LABEL maintainer=”dabbaskhaled@gmail.com”
USER root

# ENV JAVA_OPTS="-Xmx8192m"
# ENV JENKINS_OPTS=" --handlerCountMax=300"

# RUN mkdir /var/log/jenkins
# RUN chown -R  jenkins:jenkins /var/log/jenkins
USER jenkins
# ENV JENKINS_OPTS="--handlerCountMax=300 --logfile=/var/log/jenkins/jenkins.log"
EXPOSE 8080
