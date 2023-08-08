
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
sudo cp {abigen,bootnode,clef,evm,geth,puppeth,rlpdump} /usr/local/bin/
```
check version
```bash
 geth version
```

Running ethereum private network

```
mkdir PrivateNetwork && cd PrivateNetwork
```
create an Ethereum account

```
geth --datadir "data" account new
```



