FROM node:16-slim

RUN npm i -g @vscode/vsce

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]