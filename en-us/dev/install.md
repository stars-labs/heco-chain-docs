# Compile and Run

## Download
Download source code via `git`
```
    git clone https://github.com/HuobiGroup/huobi-eco-chain.git
```
## Install Golang
Reference: [Go Download and install](https://golang.org/doc/install)

## Compile
```
cd /path/to/hecochain
make geth
```
> If you want to use cross compile, like compiling on `Mac` for `Linux`, use `make geth-linux`, `make geth-linux-amd64`, etc.


After compilation completed, the generated binary is in the folder `build/bin`.

## Run
By running `./build/bin/geth --help`, we can get all `option` info. Specific usage can refer to [Command-line Options](https://geth.ethereum.org/docs/interface/command-line-options)

## Deployment

introduce systemd management configs。


* chain node config
[config.toml](../../common/run/config.toml)

use fast sync in the config, if full needed, remove this line:
```
SyncMode = "fast"
```

* run code
[run.sh](../../common/run/run.sh)

if you need to use it as archive node, add：

```
--syncmode full \
--gcmode archive \
```

so：

```
#!/usr/bin/env bash
/data/heco/geth-linux-amd64 \
--config /data/heco/config.toml  \
--logpath /data/heco/logs \
--syncmode full \
--gcmode archive \
--verbosity 3  >> /data/heco/logs/systemd_chain_console.out 2>&1
```

* systemd scrips
[chain.service](../../common/run/chain.service)



## Network
Program will connect into `mainnet` after started. If want to connect the public testnet, you can add option `--testnet` to command when starting. 
