FROM ubuntu:18.04

RUN  mkdir -p /home/geth/data/

# Define volume & working directory.
WORKDIR /home/geth/

COPY geth /home/geth/geth

EXPOSE 4321 
EXPOSE 8543 
EXPOSE 8546

#CMD ./geth --port 4321 --networkid 1234 --datadir=./data --http --http.port 8543 --http.addr 0.0.0.0  --http.api "eth,net,web3,personal,miner" --miner.gasprice 0 --miner.etherbase 0x627306090abab3a6e1400e9345bc60c78a8bef57 --mine --miner.threads=1 --ws --ws.port 8546 --ws.api "eth,net,web3"
CMD ["./geth", "--port=4321", "--networkid=1234", "--datadir=./data", "--http", "--http.port=8543", "--http.addr=0.0.0.0",  "--http.api=eth,net,web3,personal,miner", "--miner.gasprice=0", "--miner.etherbase=0x627306090abab3a6e1400e9345bc60c78a8bef57", "--mine", "--miner.threads=1", "--ws", "--ws.port=8546", "--ws.addr=0.0.0.0", "--ws.api=eth,net,web3"]