# 交易处于pending 中的解决办法

通用处理方案：

第一种方法 : 可以加速交易,建议将gaslimt和gasPrice加倍

nonce 不正确

- 尝试填写正确的交易nonce。
- 如果您发起交易的地址有多笔pending中交易，您需要等待前序交易打包完成后，节点才会打包当前查询交易。
- 小狐狸--设置--高级--重置账户 
- 小狐狸--设置--高级--启用高级gas控制--启用customize transaction once --找到pending中交易的nonce --重新发起一笔同样nonce的交易并提高gas


gas price 过低
- 重设gas price，替换当前交易。
