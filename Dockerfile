FROM codercom/code-server:3.10.2

RUN apt-get update -y
RUN apt-get install -y node-gyp vim
