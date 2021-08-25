FROM ubuntu:18.04

RUN  mkdir -p /home/ethash/EthEpoch/

# Define volume & working directory.
WORKDIR /home/ethash/

COPY ethash-service /home/ethash/ethash-service

EXPOSE 30000

CMD ./ethash-service --prover -p 30000 --path=/home/ethash/EthEpoch/