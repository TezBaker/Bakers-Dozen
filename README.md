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
