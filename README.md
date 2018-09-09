# Bakers-Dozen
Useful Tools for Bakers

usersPay.sh

WARNING: password is currently supplied to this script as plain text
To use the expect payment script create a payment.txt file of node payments for example:

payment.txt file example
tezos-client transfer 1 from TezBaker to address1 --fee 0
tezos-client transfer 2 from TezBaker to address2 --fee 0
tezos-client transfer 3 from TezBaker to address3 --fee 0


Run the script passing in the password for key TezBaker
```
./usersPay.sh <password>
```
