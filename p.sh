#!/bin/bash

read -p "Enter your first name: " nameF
read -p "Enter your middle name: " nameM
read -p "Enter your last name: " nameL
name="$nameF $nameM $nameL"
if ( grep -qw "$name" emp ) 2>/dev/null
then
	echo "*** This name has already been registered "
	return
elif ( grep -qw $name cust ) 2>/dev/null
then
	echo "*** This name has already been registered "
	return
fi

read -p "Enter your age: " age

if [ $age -lt 15 ] 
then 
	echo "You can't register, because of your age"
	return
fi

read -p "Enter your email: " email

read -p "Enter your phone number" ph
if [ $ph != $ph ] 2>/dev/null
then 
	echo "the phone number should be all numbers "
	return
elif [ ${#ph} != 10 ]
then
	echo "the phone number should consist of 10 numbers "
	return
fi




