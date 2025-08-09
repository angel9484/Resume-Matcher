FROM ubuntu:24.10
RUN apt-get update
RUN apt-get upgrade -y 
RUN apt update && apt install -y sudo bash nodejs npm python3 python3-pip curl make build-essential curl git unzip
WORKDIR /home
ENV dummy="jump"
RUN git clone https://github.com/angel9484/Resume-Matcher.git
WORKDIR /home/Resume-Matcher
RUN chmod +x setup.sh
RUN chmod +x start.sh
EXPOSE 3000
EXPOSE 8000
ENTRYPOINT ["bash","-c","exec","start.sh"]

