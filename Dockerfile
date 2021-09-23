FROM node:14-alpine
USER node
WORKDIR /home/node/code
COPY --chown=node:node package-lock.json package.json ./
RUN npm ci
COPY --chown=node:node . .
CMD ["node", "index.js"]
