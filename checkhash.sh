#!/bin/bash

for iq in $(cat password.lst);
do
	echo -n  $iq | md5sum | cut -d "-" -f1; done > md5a.txt

	for ip in $(cat md5a.txt);
	do
		echo -n $ip | base64; done > bs64a.txt
	
		for ic in $(cat bs64a.txt);
		do
			echo -n $ic | sha1sum | cut -d "-" -f1; done > shauma.txt
