# 链上交互
`Heco` 兼容所有以太坊生态，支持所有以太坊的`RPC`接口和相关SDK。

## RPC
[RPC Method List](https://eth.wiki/json-rpc/api)

示例如下:
```
 curl -s -H 'content-type:application/json' -d '{"jsonrpc":"2.0","method":"web3_clientVersion","params":[],"id":67}' http://localhost:8545
```

## SDK使用
可使用`web3j`或`web3js`等以太坊`SDK`进行开发。以`web3js`为例。

### 获取链上信息
```JavaScript
const Web3 = require('web3')

async function getChainId() {
    const web3 = new Web3('https://http-mainnet.hecochain.com')
    let chainId = await web3.eth.getChainId()
    console.log(`chain id: ${chainId}`)
    return chainId
}
```

### 生成账户
```JavaScript
const Web3Accounts = require('web3-eth-accounts')

let account = new Web3Accounts().create()
//do not do this on prd env
console.log(`account generated. address: ${account.address}, private key: ${account.privateKey}`)
```

### 构造交易
```JavaScript
const Web3 = require('web3')

async function transfer(fromAccount, to, value){
    const web3 = new Web3('https://http-mainnet.hecochain.com')
    let chainId = await web3.eth.getChainId()
    let nonce = await web3.eth.getTransactionCount(fromAccount.address)
    let gasPrice = await web3.eth.getGasPrice()

    let unsigned = {
        from: fromAccount.address,
        to,
        value: web3.utils.numberToHex(web3.utils.toWei(value, 'ether')),
        gasPrice,
        nonce,
        chainId,
    }

    unsigned.gas = await web3.eth.estimateGas(unsigned)

    let signed = await fromAccount.signTransaction(unsigned)
    return signed
}
```