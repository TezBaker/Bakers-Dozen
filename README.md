# Bakers-Dozen
Useful Tools for Bakers

## Make multiple payments - makePayments.sh
To use the bash payment script, create a payment.txt file in the same directory and each line of the file should be a node payment statement. This is an example file below:

payment.txt file example
```
tezos-client transfer 1 from TezBaker to address1 --fee 0
tezos-client transfer 2 from TezBaker to address2 --fee 0
tezos-client transfer 3 from TezBaker to address3 --fee 0
```

Run the script and it will only prompt you for the encryption key password once. This doesn't speed up payments, as it currently takes one block per payment, but at least can run to completion without any further input. It is assumed that the tezos directoy is in your path so that tezos-client can be found.
```
./makePayments.sh
```

The bash script prompts for a password and passes it to an expect script (_runNodePayments.tcl) which loops for every line in the payments file.

## Google Baking Sheet (Beta - feedback welcome)

Just in beta but would be good to get some initial feedback. You need to make a copy before you can use it. You set the parameters in the top left panel on the summary sheet and run the scripts under the Rewards menu. The scripts may
timeout with a large baker but you can filter on your address. 

It is mainly a tool for bakers to generate their payments but you can also filter your account to see your own payments.

https://docs.google.com/spreadsheets/d/1UL0zZiQnpnEnGr5T2Qp_5aZJvgIGp0Ce538cSA_1hds/edit?usp=sharing
