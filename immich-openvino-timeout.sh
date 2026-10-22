#!/usr/bin/env bash
# One-time launcher for the Community Scripts Immich installer.
# Extends download timeouts to 20 minutes for slow Intel/OpenVINO downloads.
set -euo pipefail

# Community Scripts' curl_with_retry reads CURL_TIMEOUT (seconds).
# uv reads UV_HTTP_TIMEOUT (seconds).
export CURL_TIMEOUT=1200
export UV_HTTP_TIMEOUT=1200

exec bash -c "$(curl -fsSL https://raw.githubusercontent.com/community-scripts/ProxmoxVE/main/ct/immich.sh)"
