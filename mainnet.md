# 主网信息

## chainid
```
128
```
## rpc

国内访问：

```
https://http-mainnet-node.huobichain.com
wss://ws-mainnet-node.huobichain.com
```

社区节点-国内访问：
```
https://http-mainnet-node.defibox.com
```

国外访问：
```
https://http-mainnet.hecochain.com
wss://ws-mainnet.hecochain.com
```

## 浏览器
```
v1:
https://hecoinfo.com

v0: 3-5 退出运营
https://scan.hecochain.com
```

# P2P 节点

开放 P2P 端口（默认 32668） udp/tcp

## 国内连接

```
enode://408987841ecea8cc4804c16c9708297203e0a1aea4cad6527746357af999011338b201383572edfae8d40237bf22afd9ac9a16fdecfd9caa2387b49d592bb05b@120.27.210.80:32668
enode://880a7cafcc2a668fb6b79d9c763602520a4e8f5cb64d6c7d87d58b80ff89a410b41ce9fc9b72bc62b4746ac4cff1384940011161777fd75048661fcb3404a3f9@118.178.95.148:32668
enode://3fe1ddfd0fdcb8e795c3c371366f9c61b244eb8405ac386e9eb5cf61275782bc5639048cda8fa78d46b31320f91cdd7537d325e0aac9a8d43ac80c85fd9f1dae@47.99.179.228:32668
enode://ca2b5acf1ecbf96a032b3ced0524f825e6af73426de641256475694ff2e7c328cdfa4346527ef3b870d95fa46dccbca90dab84a564ae02cd57914bda172c6b03@47.99.193.237:32668
```

## 国外连接

> 已预置在代码中，作为 bootstrap node: https://github.com/HuobiGroup/huobi-eco-chain/blob/master/params/bootnodes.go

```
enode://7bed18c87054f807bc9096501bc78f737363f357af831791bab07c4fa6c5a1a67cdcf0a097dc2cc918262ef04fb1c05c26026df5c11a6a56666f9b1fb4072210@18.178.30.66:32668
enode://d67251dd3b050e555679a8abdc427a4c78a9bae174f2fd3b9163c364d27b6a69688ee067cd3214e8ceb71e6e602fd812797b085ae37ed3bf93b78e2b77ae3306@18.181.40.7:32668
enode://f88bb1f5d0e42cf75ec879212b7c8477d605315d5296fba02bc4600eccf73c64427de46567a320d00985d5bc612168817ba6dff169bd6a4774e112e6db0ff6a2@18.176.66.118:32668
```

可以将如上节点放到 static 配置中：

```
[Node.P2P]

StaticNodes = [
    "enode://7bed18c87054f807bc9096501bc78f737363f357af831791bab07c4fa6c5a1a67cdcf0a097dc2cc918262ef04fb1c05c26026df5c11a6a56666f9b1fb4072210@18.178.30.66:32668",
    "enode://d67251dd3b050e555679a8abdc427a4c78a9bae174f2fd3b9163c364d27b6a69688ee067cd3214e8ceb71e6e602fd812797b085ae37ed3bf93b78e2b77ae3306@18.181.40.7:32668",
    "enode://f88bb1f5d0e42cf75ec879212b7c8477d605315d5296fba02bc4600eccf73c64427de46567a320d00985d5bc612168817ba6dff169bd6a4774e112e6db0ff6a2@18.176.66.118:32668"
]
```