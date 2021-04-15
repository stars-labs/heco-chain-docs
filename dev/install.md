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

## 部署

重要提示，部署信息，请参考：[部署](/dev/deploy.md)


> SSD 是必需的

## 网络接入
程序启动默认接入`mainnet`，如需接入公共测试网，可添加`option` `--testnet`。
