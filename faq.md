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

# 是否支持--pruning 参数
`--pruning`是 parity 的参数，heco 的 API 遵循 go-ethereum 的风格，可以使用 `--gcmode archive` 来实现相同的功能。

# Metamask 卡顿

多发 mac chrome 浏览器下，

具体表现是，输入转币数量卡顿、获取 gasprice 延迟导致输入为 0，这个问题是一个已知问题，可以参考 Heco 团队给 metamask 的提的 issue：
https://github.com/MetaMask/metamask-extension/issues/10202

解决办法如下：

1）使用插件的 expand view（扩展视图）模式

![](./images/metamask_lag.png)

2）如果使用多个显示器，将窗口放到主显示器

3）使用其他浏览器

# 合约验证

1. 交易部署工具是remix 还是 truffle or？
2. 交易验证版本/是否开启优化？
3. 合约部署过程中，是否有独立的library 部署？
4. 涉及多文件部分建议使用truffle-flatten 合并为单一文件
5. 是否包含spdx 文件， 如果包含，编译器版本是否小于0.6.6
6. 只保留了一个 spdx 
7. 有初始化参数嘛，是否考虑使用https://abi.hashex.org/ 帮助浏览器识别合初始化造参数。
 https://info.etherscan.com/determine-correct-constructor-argument-during-source-code-verification-on-etherscan/
