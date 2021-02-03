# 交易处于 pending 中的解决办法

## 1）nonce 不正确

### 解决方案
* 小狐狸--设置--高级--重置账户 

或者：

* 小狐狸--设置--高级--启用高级gas控制--启用customize transaction once --找到pending中交易的nonce --重新发起一笔同样nonce的交易并提高gas

### 原因解释

> Heco 使用与账户地址相关的 nonce 数值来控制交易重放和顺序执行。

> 交易中需要填写正确的 nonce 数值才可以成功上链，正确的 nonce 数值与 eth.getTransactionCount("0xadd") 相等。

> 如果您发起交易的地址有多笔 pending 中交易，您需要等待前序交易打包完成后，节点才会打包当前交易。

## 2）gas price 过低

### 解决方案

* 重设gas price，替换当前交易。

### 原因解释

> 有可能是因为使用 metamask 的时候速度过快，导致 gasprice 没有获取成功；mac 下的 chrome 的 [bug](https://github.com/MetaMask/metamask-extension/issues/10202)，会导致小狐狸弹出界面的输入框卡顿。
