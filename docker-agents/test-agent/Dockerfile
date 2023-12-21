
#FROM jenkins/ssh-agent:latest
FROM ubuntu:20.04
WORKDIR /opt/user
RUN apt update -v
RUN touch file && ls
CMD ["pwd"]

#ENTRYPOINT [ "/bin/bash" ]



#RUN sudo apt install vim -y && sudo apt install git -y && sudo apt install less -y 

# # Add Docker's official GPG key:
# RUN sudo apt-get update && \
# sudo apt-get install ca-certificates -y curl gnupg && \
# sudo install -m 0755 -d /etc/apt/keyrings && \
# curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg && \
# sudo chmod a+r /etc/apt/keyrings/docker.gpg

# # Add the repository to Apt sources:
# RUN echo \
#   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
#   $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |\
#   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# RUN sudo apt update

# #RUN sudo apt-get --assume-yes --show-progress install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin 

# #RUN sudo docker run hello-world

# EXPOSE 22 8080

  

# RUN sudo apt install less -y && sudo apt install vim -y && sudo apt install git -y && \
#     sudo apt -y install gnome-terminal && sudo apt remove docker-desktop && \
#     rm -r $HOME/.docker/desktop && \
#     sudo rm /usr/local/bin/com.docker.cli && \
#     sudo apt purge docker-desktop

# RUN sudo apt-get -y install ./docker-desktop-<version>-<arch>.deb && \
#     systemctl --user start docker-desktop  


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