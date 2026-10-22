# Immich OpenVINO timeout launcher

This is a one-time launcher for the Community Scripts Proxmox VE Immich script.
It sets `UV_HTTP_TIMEOUT=1200` (20 minutes) before running the upstream script,
which is preserved by the Immich OpenVINO `uv sync` command.

Run it **on the Proxmox host shell as root**:

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/MrFielding/immich-openvino-timeout/main/immich-openvino-timeout.sh)"
```

The launcher downloads and runs the current upstream Immich script from
`community-scripts/ProxmoxVE`. It does not contain credentials or make unrelated
configuration changes.
