# VS Code VSCE GitHub Action

A [GitHub Action](https://github.com/features/actions) to automate deploying VS Code extensions by using [vsce](https://github.com/Microsoft/vscode-vsce).

It will enable workflows to easily deploy your VS Code extensions to the marketplace.

# Usage

Here's an example workflow which publishes an extension when you push to the master branch.

```yaml
on:
  push:
    branches:
      - master
name: Deploy Extension
jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - run: npm install
      - uses: lannonbr/vsce-action@master
        with:
          args: "publish -p $VSCE_TOKEN"
        env:
          VSCE_TOKEN: ${{ secrets.VSCE_TOKEN }}
```

# Secrets

The `VSCE_TOKEN` secret is used to authenticate with Azure DevOps when running the `vsce` CLI. You can find out how to create this token here on the VS Code Docs: [Publishing VS Code Extensions](https://code.visualstudio.com/docs/extensions/publish-extension)

# Example Use Cases

- Deploy nightly builds once a day if the `master` branch has changed since the last build.
- Deploy releases after PRs with a `Release` label are merged into Master.
- Promote new version of extension on social media with additional Actions.

Creating and publishing extensions with `vsce` is already fairly simple, but this will further integrate it into CI workflows with GitHub Actions.
