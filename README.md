# nodeterm Homebrew tap (retired)

The nodeterm desktop app is now in the official Homebrew cask repository, so no tap is needed:

```bash
brew install --cask nodeterm
```

If you installed it from this tap, `tap_migrations.json` moves the cask to `homebrew/cask` on
your next `brew update`. You can then drop the tap:

```bash
brew untap nodeterm/tap
```

This repository is archived. `nodeterm-pair` is no longer maintained: phone pairing is built
into the nodeterm app (Settings → Phone).
