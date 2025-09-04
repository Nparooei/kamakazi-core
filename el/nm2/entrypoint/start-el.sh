#!/usr/bin/env bash
set -euo pipefail
exec /nethermind/Nethermind.Runner \
  --datadir /opt/el/data \
  --config /opt/el/config/nm2.cfg \
  --Init.ChainSpecPath /opt/el/config/genesis.json \
  --Init.StaticNodesPath /opt/el/config/static-nodes.json \
  --Init.DiagnosticMode None
