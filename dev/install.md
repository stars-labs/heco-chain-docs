# 编译和运行

## 源码下载
通过`git`下载源码
```
    git clone https://github.com/HuobiGroup/huobi-eco-chain.git
```
## 安装Golang
参考 [Go Download and install](https://golang.org/doc/install)

## 编译
```
cd /path/to/hecochain
make geth
```
> 如果希望进行跨平台编译，比如在`Mac`上编译`Linux`平台的二进制文件，可以使用 `make geth-linux`相关命令操作

编译完成后，生成的二进制文件在`build/bin`目录下

## 运行
通过`./build/bin/geth --help`查看所有的`option`选项，根据情况自行设置相关配置参数。可参考[Command-line Options](https://geth.ethereum.org/docs/interface/command-line-options)

## 部署设置

给出了一组使用 systemd 进行服务管理的配置。

可以参考：

* 链节点配置
[config.toml](/common/run/config.toml)

默认使用了快速同步，如果需要使用 full，可以去掉：

```
SyncMode = "fast"
```
这一行；

* 启动脚本
[run.sh](/common/run/run.sh)

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

* systemd 脚本
[chain.service](/common/run/chain.service)


## 网络接入
程序启动默认接入`mainnet`，如需接入公共测试网，可添加`option` `--testnet`。
