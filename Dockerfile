FROM shasb.azurecr.io/baseimages/node:9-alpine

COPY . /src
RUN cd /src && npm install && node --version
EXPOSE 80
CMD ["node", "/src/server.js"]
