#!/usr/bin/env bash
# One-time launcher for the Community Scripts Immich installer.
# Extends uv's HTTP timeout to 20 minutes for slow OpenVINO downloads.
set -euo pipefail

export UV_HTTP_TIMEOUT=1200

exec bash -c "$(curl -fsSL https://raw.githubusercontent.com/community-scripts/ProxmoxVE/main/ct/immich.sh)"
