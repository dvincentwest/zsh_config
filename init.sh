#!/usr/bin/env sh
# Run this script on initial setup to get plugins
# Safe to re-run — skips steps that are already done.

ZSHDIR="$(cd "$(dirname "$0")" && pwd)"  # directory containing this script

clone_plugin() {
    local name="$1" url="$2"
    if [[ ! -d "$ZSHDIR/plugins/$name" ]]; then
        git clone --depth=1 "$url" "$ZSHDIR/plugins/$name"
    else
        echo "$name already installed, skipping."
    fi
}

# Clone plugins if not already present
clone_plugin zsh-autosuggestions     https://github.com/zsh-users/zsh-autosuggestions
clone_plugin zsh-syntax-highlighting https://github.com/zsh-users/zsh-syntax-highlighting
clone_plugin zsh-async               https://github.com/mafredri/zsh-async
clone_plugin pure                    https://github.com/sindresorhus/pure

echo "Done. Plugins are ready in $ZSHDIR/plugins/"
