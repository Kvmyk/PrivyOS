# PrivyOS Magic Network
PrivyOS uses a custom script 'magic-network' located at /usr/local/bin/magic-network.
It is managed by a systemd service called 'magic-network.service'.
To restart it: 'sudo systemctl restart magic-network'.
It attempts to use NetworkManager (nmcli) first, then falls back to dhclient.
