FROM node:18-slim

RUN npm i -g @vscode/vsce

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]