# Graph Node

## 项目信息
`Graph Node`是一个使用GraphQL在Ethereum和IPFS上快速构建去中心化应用（dApps）的协议。可方便的对链上数据进行分析和汇总。

- [官网信息](https://thegraph.com/)
- [Github](https://github.com/graphprotocol/graph-node)

## 使用方式
我们推荐按照[官方文档](https://thegraph.com/docs/)进行部署。接下来的操作仅作为一个简单的搭建教程供大家参考

### 搭建graph-node

出于便捷的考虑，我们使用官方提供的[docker compose](https://github.com/graphprotocol/graph-node/tree/master/docker)来进行节点、数据库、IPFS的部署。
注意将`docker-compose.yml`中 `ethereum` 字段的值改为`HECO`的节点连接信息。
``` YAML
graph-node:
    image: graphprotocol/graph-node
    ports:
      - '8000:8000'
      - '8001:8001'
      - '8020:8020'
      - '8030:8030'
      - '8040:8040'
    depends_on:
      - ipfs
      - postgres
    environment:
      postgres_host: postgres
      postgres_user: graph-node
      postgres_pass: let-me-in
      postgres_db: graph-node
      ipfs: 'ipfs:5001'
      ethereum: 'mainnet:http://127.0.0.1:8545'  #此处需修改
      RUST_LOG: info
 ```
 > 注意： graph-node连接的节点需要开启`archive`模式（启动节点时，添加flag --syncmode full --gcmode archive），建议各个使用方自行搭建RPC节点。

### 编写subgraph

这个需要各个使用方根据自己情况自行编写。以下几个项目可作为参考：

1. [example-subgraph](https://github.com/graphprotocol/example-subgraph)
2. [graph-network-subgraph](https://github.com/graphprotocol/graph-network-subgraph)
3. [uniswap-subgraph V1](https://github.com/graphprotocol/uniswap-subgraph)
4. [uniswap-subgraph V2](https://github.com/uniswap/uniswap-v2-subgraph)

### 发布subgraph

将编写好的subgraph打包构建成`wasm`文件，发布到`graph node`上。具体命令可参考上方的示例项目代码。

### GraphQL使用

部署完成后，就可以使用`GraphQL`来请求数据了
![avatar](../images/graphnode.jpg)