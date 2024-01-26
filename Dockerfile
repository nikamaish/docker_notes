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


# I want to create a container, give a command to run, and then stop the container


# I choosed ubuntu image because it's a very popular image, and it's very small, but due to that I needed to follow some steps, which are mentioned above of copy command

# I could have used node image, but it's a very big image, and it's not very popular, If I choosed those images, I would have to follow less steps, but the image would be very big, and it would take more time to download it, and it would take more space on my computer


# ************************  Command to create of image of Own configuration ************************

# docker build -t image-name .
# you can give any name to image here
# -t is a flag that tells docker to tag the image with a name and  . is a path to the Dockerfile, but why path is . ? because Dockerfile is in the same directory as the terminal is, so . means current directory


# if there is change in my index.js then I have to build image again. then it will be fast, bcz it will use cache
# when there is change in file then container will run npm install again, but if there is no change in file then it will use cache, and it will not run npm install again

# keep structure of files as it is to use cache, it is called cached layer

