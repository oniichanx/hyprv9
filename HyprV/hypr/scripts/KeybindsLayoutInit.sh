#!/usr/bin/env bash
# /* ---- 💫 https://github.com/oniichanx 💫 ---- */  ##
# Initialize J/K keybinds so they always cycle windows globally (no layout-specific behavior).

set -euo pipefail

scripts_dir="${XDG_CONFIG_HOME:-$HOME/.config}/hypr/scripts"

# Keep compatibility with existing startup entries while avoiding global rebinding.
if [[ -x "${scripts_dir}/ChangeLayout.sh" ]]; then
  "${scripts_dir}/ChangeLayout.sh" --quiet init >/dev/null 2>&1 || true
fi
