#!/bin/bash
set -e

# Register user if wallet address is provided
if [ ! -z "$WALLET_ADDRESS" ]; then
    python - <<EOF
from opmentis import register_user

labid = "dbc00e29-721f-40e6-b073-ec627db90115"
register_user("$WALLET_ADDRESS", labid, "miner")
EOF
fi

# Start the miner
python miner.py --wallet $WALLET_ADDRESS
