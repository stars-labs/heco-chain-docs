# 使用什么 sdk
heco 高度兼容 ethereum，可以使用 ethereum 的 sdk，例如 web3js， web3j 等。

# 使用什么编译器

可以使用网页端[remix](https://remix.ethereum.org)、或者命令行的 [solidity](https://solidity.readthedocs.io/) 编译器进行编译。

# 是否支持EVM？
完全支持以太坊EVM，对以太坊开发者完全友好。

# 地址生成规则是否一致？
完全一致。

# 资产如何进入火币生态链Heco？
目前已支持HT资产，HT在Global对火币生态链Heco的充提于12月10日上线；ETH、BTC、HUSD、DOT、FIL、BCH、LTC等资产于12月20日上链。

# 有类似swap的Dex合约提供换币吗？
目前官方Dex还没有，鼓励社区开发者提供。

# 是否有跨链桥接（bridge）资产到火币生态链Heco？
目前还没有官方的去中心化桥，鼓励社区开发者提供。
对于开发者资产，我们提供了资产承兑方案，帮组开发者快速资产上链。

见[跨链](/bridge.md)

# 如何获取测试币？
官方测试币水龙头地址，可以申请测试网HT。

https://scan-testnet.hecochain.com/faucet

# 合约部署有什么要注意的吗？
RPC接口兼容以太坊，可直接使用web3.js，对以太坊开发者完全友好。

# 区块确认时间是怎么样的？
3秒一个区块，20个区块确认

# 简单介绍下Hpos共识机制？
类似于clique的pos+poa共识机制，支持的最大的Validator数量 21个，具有交易成本低、交易延时低、交易并发高等特点。

# 介绍下元交易功能？
源于以太坊的meta-transaction，通过减免手续费，降低用户和开发者的使用门槛。可以根据HT链上持仓等多种方式进行减免。
