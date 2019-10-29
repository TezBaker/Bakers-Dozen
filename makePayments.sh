#!/bin/bash

echo "Password: "
read -s PWD
echo "Waiting Seconds:" $1
sleep $1 
./_runNodePayments.tcl $PWD 
