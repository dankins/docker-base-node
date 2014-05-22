# Ghost
#
# VERSION               0.0.1
# BUILD-USING:        docker build -t base-node .
# PUSH-USING:         docker tag base-node quay.io/queue/base-node  && docker push quay.io/queue/base-node

FROM      quay.io/queue/base
MAINTAINER Dan Kinsley <dan@queuenetwork.com>

# make sure the package repository is up to date
RUN apt-get update && apt-get install -y \
	nodejs \ 
	npm 
RUN ln -s /usr/bin/nodejs /usr/bin/node

RUN npm install express

# Launch titan when launching the container
CMD ["/bin/bash"]
