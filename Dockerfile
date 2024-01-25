# we're going to create img that will have some specific configuration

FROM ubuntu
# FROM is a keyword that tells docker to use ubuntu as a base image

RUN apt-get update
# RUN is a keyword that tells docker to run a command in the container
# apt-get is a command that installs packages in the container
# apt-get update is a command that updates the list of packages in the container

RUN apt-get install -y curl
# apt-get install -y curl is a command that installs curl in the container
# -y is a flag that tells apt-get to answer yes to all questions
# curl is a command that downloads files from the internet, which files? we'll see in a minute :)

RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -
# this command downloads a script from the internet and runs it


RUN apt-get upgrade -y
# this command upgrades all packages in the container

RUN apt-get install -y nodejs


COPY package.json package.json
COPY package-lock.json package-lock.json
COPY index.js index.js
# we're going to copy our files into the container


RUN npm install

ENTRYPOINT [ "node",    "index.js" ]
# above is a command that tells docker what to run when the container starts
