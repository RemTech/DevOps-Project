
FROM jenkins/ssh-agent:latest
RUN apt update && apt install sudo -y 
RUN sudo apt install less -y && sudo apt install vim -y
RUN sudo apt install git -y
EXPOSE 22
# FROM ubuntu:20.04
# FROM jenkins/jenkins:2.426.2-lts-jdk17
# && sudo apt install systemctl -y
# USER root

#WORKDIR /opt/remtech

#RUN apt update && apt install sudo -y 

#RUN sudo apt install less -y && sudo apt install systemctl -y

#RUN sudo apt install wget -y && sudo apt install docker.io -y && sudo apt install unzip -y

# RUN sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
#   https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

# RUN echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
#   https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
#   /etc/apt/sources.list.d/jenkins.list > /dev/null

#RUN sudo apt update && apt install openjdk-11-jre -f -y 

#RUN sudo apt install jenkins -y

#EXPOSE 22

#EXPOSE 50000

#RUN sudo useradd remtech 

#CMD [ "jenkins" ]

#ENTRYPOINT [ "jenkins" ]

# to work on this and docker compose project
#VOLUME [ "/var/data" ]