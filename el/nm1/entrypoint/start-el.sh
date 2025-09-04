#!/usr/bin/env bash
set -euo pipefail
REQ=(/opt/el/config/genesis.json /opt/el/config/nm1.cfg /opt/el/config/static-nodes.json /opt/el/config/enodekey /opt/el/keystore/.pwd)
for f in "${REQ[@]}"; do [ -s "$f" ] || { echo "Missing required file: $f"; exit 1; }; done
exec /nethermind/Nethermind.Runner \
  --datadir /opt/el/data \
  --config /opt/el/config/nm1.cfg \
  --Init.ChainSpecPath /opt/el/config/genesis.json \
  --Init.StaticNodesPath /opt/el/config/static-nodes.json \
  --Init.DiagnosticMode None
