FROM centos:centos6
RUN yum install -y epel-release
RUN yum install -y nodejs npm
COPY package.json /src/package.json
RUN cd /src; npm install
COPY . /src
EXPOSE  8080
CMD ["node", "/src/index.js"]
