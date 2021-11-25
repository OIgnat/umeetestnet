#!/bin/bash
PATH=/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin

umeepath='PATH_TO_UMEE'
password='WALLET_PASSWORD'
from_addr='WALLET_ADDERSS'
chain='CHAIN_ID'
validator_addr='VALIDATOR_ADDRESS'
fees='1000uumee'
delay_sec=30

echo $password |  $umeepath tx distribution  withdraw-all-rewards \
--from $from_addr \
--fees=$fees \
--chain-id=$chain \
-y

sleep $delay_sec

balance=$($umeepath q bank balances $from_addr | grep amount |awk '{print $3}'| tr -d \" );
balance=$(($balance-1500000))

echo $password | $umeepath tx staking delegate $validator_addr ${balance}uumee \
--from $from_addr \
--chain-id=$chain \
--fees=$fees \
--gas auto \
-y
