# Auroro Homebrew Tap

Homebrew formulae for [Auroro](https://github.com/next-press/auroro) tools.

## Checkmate

A task management TUI.

### Prerequisites

Checkmate is distributed from a private repository. You need a GitHub personal access token to install it.

**Generate a token using the GitHub CLI:**

```bash
gh auth login
```

Then add the token to your shell profile:

```bash
echo "export HOMEBREW_GITHUB_API_TOKEN=$(gh auth token)" >> ~/.zshrc
source ~/.zshrc
```

### Install

```bash
brew install next-press/auroro/checkmate
```

### Upgrade

```bash
brew upgrade checkmate
```

### Uninstall

```bash
brew uninstall checkmate
brew untap next-press/auroro
```
