FROM ubuntu:20.04

RUN apt-get update -y
RUN apt-get install git -y

RUN git clone https://github.com/RohitKochhar/git-commit-bot.git
WORKDIR ./git-commit-bot
RUN git config --global user.email "rkochhar@uwaterloo.ca"
RUN git config --global user.name "RohitKochhar"

ENTRYPOINT ["bash", "./fibonacci.sh"]