#!/bin/bash -x
ispresent=1;
randomcheck=$(( RANDOM%2 ));
	if [ $ispresent -eq $randomcheck ];
		then
			emprateperhr=20;
			emphrs=8;
		salary=$(( $emphrs*$emprateperhr));
		else
			salary=0;
	fi
