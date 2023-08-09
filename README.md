
# KBAIC - Dev-environment

Lets setup our machine for ethereum development

## 1. Nodejs and npm

Install nodejs and npm

```bash
  sudo apt update
```
 ```bash
 sudo apt install nodejs
```   
 ```bash
 node -v
```   
 ```bash
sudo apt install npm
```   
via pre built installer https://nodejs.org/en/download

## 2. Ganache

install the UI version - its awesome

https://trufflesuite.com/ganache/

## 3 .Truffle

Install globally

```bash
  npm install -g truffle

```
run as administartor in windows
```bash
truffle version

```

Create a directory
```bash
  mkdir setup
```
```bash
  cd setup
```

Initialise 

```bash
  truffle init
```

compile

```bash
  truffle compile
```
deploy

```bash
  truffle migrate --reset
```

## 4 . Geth
we will set up a private network using Geth, an execution client, in proof of work mode.

https://geth.ethereum.org/downloads

download geth and tools for your os

extract and change into the folder

```bash
  cd geth all tools
```
Make sure all files in the directory have executable permission.


```bash
  sudo chmod +x abigen bootnode clef evm geth puppeth rlpdump
```
Copy the files to where OS executables are stored.

```bash
sudo cp {abigen,bootnode,clef,evm,geth,rlpdump} /usr/local/bin/
```
check version
```bash
 geth version
```
spin up developer mode 
```
geth --dev --http --http.api eth,web3,net --http.corsdomain "http://remix.ethereum.org"
```

Running ethereum private network

```
mkdir PrivateNetwork && cd PrivateNetwork
```
create an Ethereum account

```
geth --datadir "data" account new
```


### genesis.json

Create a new file in the directory named genesis.json and copy the below configuration into it.
```
{
  "config": {
    "chainId": 5777,
    "homesteadBlock": 0,
    "eip150Block": 0,
    "eip155Block": 0,
    "eip158Block": 0,
    "byzantiumBlock": 0,
    "constantinopleBlock": 0,
    "petersburgBlock": 0,
    "istanbulBlock": 0,
    "muirglacierBlock":0,
    "berlinBlock":0,
    "londonBlock":0,
    "ethash": {}
  },
  "difficulty": "1",
  "gasLimit": "8000000",
  "alloc": {
    "0x9Fc8c0DC95Cf0e9A4aCB85f6080d9dBe5D0A324c": { "balance": "300000" }
  }
}
```
Now to create an Ethereum blockchain node that uses a genesis block based on the above configuration, execute the following command

```
geth --datadir "data" init genesis.json
```

Now the final step is to bring the node by executing the following command:

```
geth --identity "KBA" --networkid "5777" --datadir "data" --http --http.port "8545" --unlock "0" --http.corsdomain "*" --http.api "miner,eth,net,web3,personal" --allow-insecure-unlock --nodiscover --miner.etherbase "0"
```


