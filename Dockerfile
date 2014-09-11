# Ghost
#
# VERSION               0.0.1
# BUILD-USING:        docker build -t docker-base-node .
# PUSH-USING:         docker tag docker-base-node surf/docker-base-node  && docker push surf/docker-base-node

FROM      surf/docker-base
MAINTAINER Dan Kinsley <dan@surfbeta.com>

# make sure the package repository is up to date
RUN apt-get update && apt-get install -y \
	nodejs \ 
	npm 
RUN ln -s /usr/bin/nodejs /usr/bin/node

RUN npm install express

CMD ["/bin/bash"]
