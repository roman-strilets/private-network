FROM ubuntu:18.04

RUN  mkdir -p /home/beam/wallet/ && mkdir -p /home/beam/data/

WORKDIR /home/beam/data/

COPY wallet-api-masternet /home/beam/wallet/wallet-api-masternet

EXPOSE 11011

ENV NODE_ADR=localhost:11003

CMD /home/beam/wallet/wallet-api-masternet -n $NODE_ADR --FakePoW=1 --Fork1=20 --Fork2=40 --Fork3=60 --Maturity.Coinbase=60 --pass=1 --port=11011 --enable_assets --use_http=1