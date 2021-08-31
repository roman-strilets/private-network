#!/bin/bash
if [ ! -d "/home/geth/data/geth" ]; then
  /home/geth/geth --datadir /home/geth/data/ init /home/geth/geth-genesis.json ;
  echo
  echo 'geth init process done. Ready for start up.'
  echo
else
  echo
  echo 'geth is already initialized! Ready for start up.'
  echo
fi
