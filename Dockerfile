FROM ubuntu:14.04

# install node.js and npm
RUN apt-get -qq update && apt-get install -y nodejs && apt-get install -y npm && ln -s /usr/bin/nodejs /usr/bin/node

# install dredd
RUN npm install -g dredd
