# VS Code Deploy Action

A [GitHub Action](https://github.com/features/actions) to automate deploying VS Code extensions.

It will enable workflows to easily deploy your VS Code extensions to the marketplace as well as push .vsix files to tagged releases on GitHub as well.

I am planning on using [JasonEtco/actions-toolkit](https://github.com/JasonEtco/actions-toolkit) in conjunction with [Microsoft/vscode-vsce](https://github.com/Microsoft/vscode-vsce) to make using the action only require the setup of a few secrets when integrating it into your workflows.

# Example Use Cases

- Deploy nightly builds once a day if the `master` branch has changed since the last build.
- Deploy releases after PRs with a `Release` label are merged into Master.
- Promote new version of extension on social media with additional Actions.

Creating and publishing extensions with `vsce` is already fairly simple, but this will further integrate it into CI workflows with GitHub Actions.
