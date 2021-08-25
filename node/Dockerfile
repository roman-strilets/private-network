FROM ubuntu:18.04

RUN  mkdir -p /home/beam/node/ && mkdir -p /home/beam/data/

# Define volume & working directory.
WORKDIR /home/beam/data/

COPY treasury.bin /home/beam/node/treasury.bin
COPY beam-node-masternet /home/beam/node/beam-node-masternet

ENV FAKEPOW=1
ENV MINING_THREADS=1
ENV FORK1=20
ENV FORK2=40
ENV FORK3=60
ENV POW_SOLVE_TIME=15000
ENV MATURITY=60
ENV OWNER_KEY=0Xdh1Jsu1sL1DoUoUzMIfFJyF+vZ6kMDI1OXbC2EkMJOfLZYeqH0KZOE3tfD31i9QXhN1WCA07D0xrrhRhR73XggL+yfGTuXUnHTCIK6N85LVJX5lqK/8v3D1N/Cr7OenJSkBhHvtRQmxEfv
ENV MINER_KEY=pgWUy2RDp2TWEXsRCM6/ilugV4U41BuMwtxXdEsfx+MPL7Y84ICetuE0TUuscrvBKBV3L7qW9ErsreD6I5ZfcRQNS6WU1HhA7kE=
ENV PEER=localhost:11002
ENV PORT=11001

EXPOSE $PORT

CMD /home/beam/node/beam-node-masternet --FakePoW=$FAKEPOW --port=$PORT --pass=1 --treasury_path=/home/beam/node/treasury.bin --mining_threads=$MINING_THREADS --Fork1=$FORK1 --Fork2=$FORK2 --Fork3=$FORK3 --pow_solve_time=$POW_SOLVE_TIME --Maturity.Coinbase=$MATURITY --owner_key=$OWNER_KEY --miner_key=$MINER_KEY --peer=$PEER