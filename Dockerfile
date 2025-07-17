FROM n8nio/n8n:latest
USER root
RUN npm install --no-optional -g @turf/turf \
    &&  npm install --no-optional -g  rbush
ENV NODE_PATH=/usr/local/lib/node_modules/
USER node
