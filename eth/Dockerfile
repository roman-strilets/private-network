FROM ubuntu:18.04

RUN  mkdir -p /home/geth/data/

# Define volume & working directory.
WORKDIR /home/geth/

COPY geth /home/geth/geth
COPY geth-genesis.json /home/geth/geth-genesis.json
COPY config.toml /home/geth/config.toml
COPY init.sh /home/geth/init.sh

EXPOSE 4321 
EXPOSE 8543 
EXPOSE 8546

ENTRYPOINT /home/geth/init.sh && exec /home/geth/geth --config config.toml --mine --miner.threads=1
