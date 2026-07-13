# Nabsku Homebrew Tap

Homebrew packages maintained by [Nabsku](https://github.com/Nabsku).

## Install Pi Bun Updater

Use the fully qualified formula name so Homebrew trusts only this formula:

```bash
brew install Nabsku/tap/pi-bun-updater
```

The formula builds `pi-bun-update` from the tagged public Go source. The updater then downloads and verifies the official compiled Bun build of [Pi](https://pi.dev/).

```bash
pi-bun-update update
pi-bun --version
```

To activate the compiled Pi binary directly as `pi` in the selected bin directory:

```bash
pi-bun-update update --force
pi --version
```

`--force` does not uninstall an npm/pnpm Pi package. Your `PATH` order determines which `pi` executable wins.

Source and release notes: https://github.com/Nabsku/pi-bun-updater

## Maintenance

- Formula changes are tested by Homebrew's `brew test-bot` on Intel macOS, Apple Silicon macOS, and Linux.
- A scheduled tap-owned workflow checks the latest public release and opens a pull request when the formula is outdated.
- Update pull requests are tested before merge; they never push formula changes directly to `main`.
- Bottles can be published from a reviewed pull request with the `brew pr-pull` workflow and the reviewed head SHA.

This tap was structured from Homebrew's current `brew tap-new` template.
