#!/usr/bin/expect -f
set timeout 200


set payments [ file join payments.txt ]
set fh [ open $payments r ]
set password [lindex $argv 0]

while {[gets $fh payment] != -1} {
	eval spawn $payment 
	expect "Enter password for encrypted key:" {send -- "$password\r"}
	expect eof
}
