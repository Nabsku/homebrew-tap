# Nabsku Homebrew Tap

Homebrew formulas for Nabsku tools.

## Install Pi Bun Updater

```bash
brew install Nabsku/tap/pi-bun-updater
```

The formula installs `pi-bun-update`. By default, the updater activates the compiled Pi binary as `pi-bun`:

```bash
pi-bun-update update
pi-bun --version
```

To activate it directly as `pi` in the selected bin directory:

```bash
pi-bun-update update --force
pi --version
```

`--force` does not uninstall an existing npm/pnpm Pi package. Your `PATH` order decides which `pi` executable wins.

Source and release notes: https://github.com/Nabsku/pi-bun-updater
