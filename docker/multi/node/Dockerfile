FROM ubuntu:16.04
ADD ./geth /app/geth
ADD ./miner/testnet.json /app/genesis.json

RUN mkdir -p /app/keystore \
&& mkdir -p /app/data \
&& chmod 755 /app/geth

ARG password
ARG privatekey
RUN echo $password > /app/.accountpassword
RUN echo $privatekey > /app/.privatekey



WORKDIR "/app"

RUN /app/geth init /app/genesis.json
RUN /app/geth account import --password /app/.accountpassword  /app/.privatekey

ENV address=""
ENV bootnodeId=""
ENV bootnodeIp=""

CMD sh -c 'sleep 10; cd /app; ./geth --bootnodes "enode://$bootnodeId@$bootnodeIp:0?discport=30301" --networkid "6660002" --rpc --rpcaddr "0.0.0.0" --rpcapi "eth,web3,net,admin,debug,personal" --rpccorsdomain "*"  --rpcport 8545 --syncmode="full"  --allow-insecure-unlock  --verbosity 4'

EXPOSE 8545
EXPOSE 30303
