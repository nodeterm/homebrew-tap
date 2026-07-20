# nodeterm Homebrew tap

```bash
brew tap nodeterm/tap
brew trust nodeterm/tap   # Homebrew ≥6 asks once for third-party taps
```

| Package | Install | What it is |
|---|---|---|
| `nodeterm` (cask) | `brew install --cask nodeterm` | The [nodeterm](https://nodeterm.dev) desktop app for macOS (Apple Silicon + Intel) |
| `nodeterm-pair` | `brew install nodeterm-pair` | Host-side QR pairing helper for nodeterm mobile |

The cask is updated automatically by the release pipeline in the app repo.
The app self-updates (electron-updater), so `brew upgrade` is rarely needed for it.
