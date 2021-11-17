FROM ubuntu:18.04

RUN  mkdir -p /home/beam/wallet/ && mkdir -p /home/beam/data/

WORKDIR /home/beam/data/

COPY wallet-api-masternet /home/beam/wallet/wallet-api-masternet
COPY beam-wallet-masternet /home/beam/wallet/beam-wallet-masternet
COPY init.sh /home/beam/wallet/init.sh
COPY pipe_app.wasm /home/beam/wallet/pipe_app.wasm

EXPOSE 11011

ENV NODE_ADR=localhost:11003

ENTRYPOINT /home/beam/wallet/init.sh && exec /home/beam/wallet/wallet-api-masternet -n $NODE_ADR --FakePoW=1 --Fork1=20 --Fork2=40 --Fork3=60 --Maturity.Coinbase=60 --pass=$WALLET_PASS --port=11011 --enable_assets --use_http=1