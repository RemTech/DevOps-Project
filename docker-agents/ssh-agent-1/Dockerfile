
FROM jenkins/ssh-agent:jdk17

RUN apt-get update && apt-get install sudo -y && sudo apt-get clean \
    sudo apt-get install less -y && sudo apt-get install vim -y && sudo apt-get clean \
    sudo apt-get install maven -y && sudo apt-get clean \
    sudo apt-get install nodejs npm -y && sudo apt-get clean \
    sudo apt-get install git-all -y && sudo apt-get clean

EXPOSE 22