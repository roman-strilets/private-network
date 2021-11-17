#!/bin/bash
trap '' SIGINT
if [ ! -f "/home/beam/data/wallet.db" ]; then
  /home/beam/wallet/beam-wallet-masternet --FakePoW=1 --Fork1=20 --Fork2=40 --Fork3=60 --Maturity.Coinbase=60 --pass=$WALLET_PASS --wallet_path=/home/beam/data/wallet.db restore --seed_phrase=$SEED_PHRASE
  echo
  echo 'wallet.db restore process done. Ready for start up.'
  echo
else
  echo
  echo 'wallet.db is already restored! Ready for start up.'
  echo
fi
