#!/bin/bash
# title The bangumi to do name
# count The bangumi total eps.
title=$1
count=$2
for (( i = 1; i <= count; i++ ))
do
	echo "$title $i"
done