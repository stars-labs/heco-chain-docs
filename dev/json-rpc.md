# 简介
用户或者开发者，主要是使用 jsonrpc 与链的节点进行交互。本文档描述 json-rpc 的规范和错误信息。

# jsonrpc 规范

Heco 节点支持 [json-rpc 2.0](https://www.jsonrpc.org/specification)标准的 http 请求。

一个典型的 json-rpc 请求是这样的：

```
curl --location --request POST 'https://http-mainnet-node.huobichain.com' \
--header 'Content-Type: application/json' \
--data-raw '{"jsonrpc":"2.0","id":3,"method":"web3_clientVersion","params":[]}
'
```

一个典型的正确返回值：

```
{
    "jsonrpc": "2.0",
    "id": 3,
    "result": "Geth/v1.0.1-stable-d094dd75/linux-amd64/go1.13.4"
}
```

一个典型的错误返回值：

```
{
    "jsonrpc": "2.0",
    "id": 3,
    "error": {
        "code": -32601,
        "message": "the method web3_clientVersio does not exist/is not available"
    }
}
```

其中 error 字段是产生错误的情况下返回，其中有 `code`和`message` 字段。

# json-rpc 协议级别的错误

请参考：[协议文档](http://wiki.geekdream.com/Specification/json-rpc_2.0.html)


| code             | message                    | meaning                                                    |
| ---------------- | -------------------------- | ---------------------------------------------------------- |
| -32700           | Parse error语法解析错误    | 服务端接收到无效的json。该错误发送于服务器尝试解析json文本 |
| -32600           | Invalid Request无效请求    | 发送的json不是一个有效的请求对象。                         |
| -32601           | Method not found找不到方法 | 该方法不存在或无效                                         |
| -32602           | Invalid params无效的参数   | 无效的方法参数。                                           |
| -32603           | Internal error内部错误     | JSON-RPC内部错误。                                         |
| -32000 to -32099 | Server error服务端错误     |                                                            |

# Heco json-rpc 的错误

请参考[文档](https://eips.ethereum.org/EIPS/eip-1474#error-codes)；

介绍在 json-rpc 基础上的增补部分；

| Code   | Message                        | Meaning                                       | Category     |
| ------ | ------------------------------ | --------------------------------------------- | ------------ |
| -32000 | Invalid input 错误的输入                | 输入参数有误                 | non-standard |
| -32001 | Resource not found 没找到资源             | 资源没找到                  | non-standard |
| -32002 | Resource unavailable 资源不可用           | 无法访问指定的资源              | non-standard |
| -32003 | Transaction rejected 交易拒绝          | 交易创建失败                 | non-standard |
| -32004 | Method not supported 方法不支持          | 未支持此方法                    | non-standard |
| -32005 | Limit exceeded 超过限制              | 请求超过限制                | non-standard |
| -32006 | JSON-RPC version not supported	 JSON-RPC 版本不支持| 版本错误 | non-standard |


# web3 sdk json-rpc 错误

请参考[文档](https://eips.ethereum.org/EIPS/eip-1193#provider-errors)

| Status code | Name                  | Description                                                  |
| ----------- | --------------------- | ------------------------------------------------------------ |
| 4001        | User Rejected Request  | 用户拒绝请求                             |
| 4100        | Unauthorized 未授权         |  请求的方法或者账户未被用户授权 |
| 4200        | Unsupported Method  未支持方法  | 服务提供方未支持这个方法        |
| 4900        | Disconnected  连接断开       | 服务提供方断开连接            |
| 4901        | Chain Disconnected 链断开   | 服务提供方未连接到对应的链       |