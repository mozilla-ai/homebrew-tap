# Mozilla AI Homebrew Tap

This repository is a **Homebrew tap** for installing packages created by [Mozilla AI](https://www.mozilla.ai/).

## What is a Homebrew Tap?

A Homebrew tap is a repository that contains 'formulae' and 'casks' These are Ruby scripts that tell 
[Homebrew](https://brew.sh/) how to install software that is not included in the main Homebrew core repository.

-----

## How to use this tap

### Add the tap

To add the Mozilla AI tap to your local Homebrew installation, run the following command in your terminal.

```sh
brew tap mozilla-ai/tap
```

> [!NOTE]  
> Homebrew automatically prepends `homebrew-` to the repository name, so you don't need: `mozilla-ai/homebrew-tap`

### Install a package

Once the tap is added, you can install any of our packages by using the package name directly. 
For example, to install `{package-name}`, use the following command:

```sh
brew install {package-name}
```

Alternatively, you can install a package in a single command without adding the tap first, by using the fully qualified name:

```sh
brew install mozilla-ai/tap/{package-name}
```

Replace `{package-name}` with the name of the package you want to install. 
If the package is a cask, you'll need to add the `--cask` flag:

```bash
brew install --cask mozilla-ai/tap/{package-name}
```

-----

## About Mozilla AI

[Mozilla AI](https://www.mozilla.ai/) is a startup dedicated to building an independent, trustworthy, and open-source AI ecosystem. 
This tap serves as a way to distribute our open-source tools and projects to the community. 
You can find more of our work on our main [GitHub page](https://github.com/mozilla-ai).