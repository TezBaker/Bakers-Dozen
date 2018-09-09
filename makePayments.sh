#!/bin/bash

echo "Password: "
read -s PWD

./_runNodePayments.tcl $PWD 
