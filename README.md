# Bakers-Dozen
Useful Tools for Bakers

## Make multiple payments - makePayments.sh (tested on Ubuntu 18.4)
First you need to install expect 

```
sudo apt-get update
sudo apt-get -y install expect
```

You also need to add the tezos directory to your path so the script can be run from anywhere. Add the following to your .profile
```
if [ -d "$HOME/tezos" ] ; then
PATH="$PATH:$HOME/tezos"
fi
```
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

## Google Baking Sheet 

You need to make a copy of the sheet before you can use it. You set the parameters in the top left panel on the summary sheet and run the scripts under the Rewards menu. The scripts may timeout with a large baker but you can filter on your address. 

It is mainly a tool for bakers to generate their payments but you can also filter your account to see your own payments.


https://docs.google.com/spreadsheets/d/1scqNd9tM5iEkd2M-_pCTx5OGy1hNvvouDSXqDjdQn2s/edit?usp=sharing

### Fields
 
Start and End Cycle Rewards – Go and get rewards between for these cycles (_rewards sheet)

Start and End Cycle Payments – Go and get the rewards for each delegate and compute the payment amount (_cycle payments sheet)

Default Fee – If a fee has not been specified for an address then use this default fee

Baker Address – The baker address that rewards will be calculated

Payment Address – This address is used to create the Tezos command (k column on _cycle payments sheet)

Delegate Filter – Can filter by one delegate address, this is useful for a delegate to check their rewards

Cycles Per Year – This is used to calculate the APR

Network Fee – This is used to subtract of the delegates reward to cover their fee cost for the transaction


