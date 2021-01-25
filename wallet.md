# 概况

支持 metamask、huobi wallet app、huobi wallet 浏览器插件

> 注意：提现到钱包之前，请检查兼容性，已知 Ledger 暂未支持

# metamask

下载地址：https://metamask.io/

添加自定义网络：

## 主网

```
chainid: 128
rpc: https://http-mainnet-node.huobichain.com
scan: https://scan.hecochain.com
```

![metamask](./images/metamask2.png)


## 测试网

```
chainid: 256
rpc: https://http-testnet.hecochain.com
scan: https://scan-testnet.hecochain.com
```

# 关于 mac chrome 浏览器下 metamask 的卡顿

具体表现是，输入转币数量卡顿、获取 gasprice 延迟导致输入为 0，这个问题是一个已知问题，可以参考 Heco 团队给 metamask 的提的 issue：
https://github.com/MetaMask/metamask-extension/issues/10202

解决办法如下：

1）使用插件的 expand view（扩展视图）模式

![](./images/metamask_lag.png)

2）如果使用多个显示器，将窗口放到主显示器

3）使用其他浏览器

# huobi wallet app

https://www.huobiwallet.com/

# huobi wallet extension

> 待公布

# Heco cointtype

https://github.com/satoshilabs/slips/blob/master/slip-0044.md