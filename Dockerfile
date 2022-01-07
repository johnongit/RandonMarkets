FROM nodered/node-red
COPY ./settings.js /data/

RUN npm install node-red-node-twitter
RUN npm install node-red-node-pi-gpio node-red-contrib-http-multipart \
    node-red-contrib-file-buffer node-red-contrib-string node-red-node-twitter \
    node-red-contrib-loop node-red-dashboard
