# Bakers-Dozen
Useful Tools for Bakers

makePayments.sh
To use the expect payment script create a payment.txt in the same directory of the script file of node payments for example:

payment.txt file example
tezos-client transfer 1 from TezBaker to address1 --fee 0
tezos-client transfer 2 from TezBaker to address2 --fee 0
tezos-client transfer 3 from TezBaker to address3 --fee 0


Run the script and will prompt for password only once. This does not speed up payments as it currently take one block per payment.
```
./makePayments.sh
```
