FROM node:10-slim

LABEL version="1.0.0"
LABEL repository="https://github/lannonbr/vscode-deploy-action"
LABEL homepage="https://github/lannonbr/vscode-deploy-action"
LABEL maintainer="Benjamin Lannon <benjamin@lannonbr.com>"

LABEL com.github.actions.name="GitHub Action for vsce"
LABEL com.github.actions.description="Wraps the vsce CLI to enable common vsce commands."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="green"

RUN npm i -g vsce

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]