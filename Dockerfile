FROM node:20-slim

RUN npm i -g @vscode/vsce

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]