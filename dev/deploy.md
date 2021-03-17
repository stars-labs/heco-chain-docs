# 部署设置

给出了一组使用 systemd 进行服务管理的配置。

## 硬件配置

### 最低

```
8core
16g
ssd iops>5k
```

### 推荐
```
16core
32g
ssd iops>5k
```

### 网络

```
公网 ip
开启 TCP/UDP 32668 端口；便于 p2p 发现和互联
```

## 链节点配置

* config.toml

```
[Eth]
SyncMode = "fast"
DiscoveryURLs = []
TrieCleanCacheRejournal= 300000000000

[Eth.Miner]
GasFloor = 8000000
GasCeil = 8000000
GasPrice = 0
Recommit = 3000000000
Noverify = false

[Eth.Ethash]
CacheDir = "ethash"
CachesInMem = 2
CachesOnDisk = 3
CachesLockMmap = false
DatasetDir = "/data/heco/data/.ethash"
DatasetsInMem = 1
DatasetsOnDisk = 2
DatasetsLockMmap = false
PowMode = 0

[Eth.TxPool]
Locals = []
NoLocals = false
Journal = "transactions.rlp"
Rejournal = 3600000000000
PriceLimit = 1
PriceBump = 10
AccountSlots = 16
GlobalSlots = 4096
AccountQueue = 64
GlobalQueue = 1024
Lifetime = 10800000000000

[Node]
DataDir = "/data/heco/data"
InsecureUnlockAllowed = true
NoUSB = true
IPCPath = "geth.ipc"
HTTPHost = "0.0.0.0"
HTTPPort = 8545
HTTPCors = ["*"]
HTTPVirtualHosts = ["*"]
HTTPModules = ['eth', 'net', 'web3']

WSHost = "0.0.0.0"
WSPort = 8546
WSModules = ['eth', 'net', 'web3']

GraphQLVirtualHosts = ["localhost"]


[Node.P2P]
MaxPeers = 50
NoDiscovery = false

ListenAddr = ":32668"
EnableMsgEvents = false

[Node.HTTPTimeouts]
ReadTimeout = 30000000000
WriteTimeout = 30000000000
IdleTimeout = 120000000000

```

默认使用了快速同步，如果需要使用 full，将下列配置：

```
SyncMode = "fast"
```
修改为
```
SyncMode = "full"
```

## 启动脚本


* run.sh


```
#!/usr/bin/env bash
/data/heco/geth-linux-amd64 \
--config /data/heco/config.toml  \
--logpath /data/heco/logs \
--verbosity 3  >> /data/heco/logs/systemd_chain_console.out 2>&1
```

如果需要启用archive 类型，需要加入：

```
--syncmode full \
--gcmode archive \
```

即：

```
#!/usr/bin/env bash
/data/heco/geth-linux-amd64 \
--config /data/heco/config.toml  \
--logpath /data/heco/logs \
--syncmode full \
--gcmode archive \
--verbosity 3  >> /data/heco/logs/systemd_chain_console.out 2>&1
```


## systemd配置

```
[Unit]
Description=huobi smart chain service

[Service]
Type=simple
ExecStart=/bin/sh /data/heco/run.sh

Restart=on-failure
RestartSec=5s

LimitNOFILE=65536

[Install]

```