#!/usr/bin/env bash
/data/heco/geth-linux-amd64 \
--config /data/heco/config.toml  \
--logpath /data/heco/logs \
--verbosity 3  >> /data/heco/logs/systemd_chain_console.out 2>&1
