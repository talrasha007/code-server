FROM codercom/code-server:3.10.2

RUN sudo apt-get update -y && sudo apt-get install -y node-gyp vim && sudo apt-get clean autoclean && sudo rm -rf /var/lib/apt/lists/*

ENV NVM_DIR /home/coder/.nvm
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install --lts
