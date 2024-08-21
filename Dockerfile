FROM node:18-slim

RUN npm i -g vsce

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]