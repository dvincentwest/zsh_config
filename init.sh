#!/usr/bin/env zsh
# Run this script to set up the lean zsh config.
# Safe to re-run — skips steps that are already done.

ZSHDIR="${0:A:h}"  # directory containing this script

# Clone plugins if not already present
if [[ ! -d "$ZSHDIR/plugins/zsh-autosuggestions" ]]; then
    git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions \
        "$ZSHDIR/plugins/zsh-autosuggestions"
else
    echo "zsh-autosuggestions already installed, skipping."
fi

if [[ ! -d "$ZSHDIR/plugins/zsh-syntax-highlighting" ]]; then
    git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting \
        "$ZSHDIR/plugins/zsh-syntax-highlighting"
else
    echo "zsh-syntax-highlighting already installed, skipping."
fi

echo "Done. Plugins are ready in $ZSHDIR/plugins/"
