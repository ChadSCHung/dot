#!/usr/bin/env bash
set -e

CHAIN_NAME="REDSOCKS"
REDSOCKS_PORT="31338"
TARGET_NET="10.0.0.0/8"

case "$1" in
    start)
        echo "[INFO] Adding iptables rules for REDSOCKS..."

        # Create chain of redsocks
        iptables -t nat -N "$CHAIN_NAME" 2>/dev/null || true

        # Direct matched packets to chain
        iptables -t nat -A OUTPUT -p tcp -d "$TARGET_NET" -j "$CHAIN_NAME"

        # Redirect TCP traffic to redsocks port
        iptables -t nat -A "$CHAIN_NAME" -p tcp -j REDIRECT --to-port "$REDSOCKS_PORT"
        ;;

    stop)
        echo "[INFO] Removing iptables rules for REDSOCKS..."

        # delete rules
        iptables -t nat -D OUTPUT -p tcp -d "$TARGET_NET" -j "$CHAIN_NAME" 2>/dev/null || true

        # Clean chain
        iptables -t nat -F "$CHAIN_NAME" 2>/dev/null || true
        iptables -t nat -X "$CHAIN_NAME" 2>/dev/null || true
        ;;

    *)
        echo "Usage: $0 {start|stop}"
        exit 1
        ;;
esac

