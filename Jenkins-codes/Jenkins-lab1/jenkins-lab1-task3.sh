#!/bin/bash
if [[ ${ResultsInFile} == true ]]
then
	echo " My name is ${FirstName} ${LastName} and I am a ${Gender} " >> name.txt
else
	echo " My name is ${FirstName} ${LastName} and I am a ${Gender} "
fi
