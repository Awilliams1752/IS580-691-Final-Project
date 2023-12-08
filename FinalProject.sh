#!/bin/bash
##############################################################################################################################
#The purpose of this code is to display and print out a list of open and closed cron sessions(without any duplicates)
# in 4 separate output files for the users root and ubuuntu(2 per each)  as it will print a list of those sessions one of each
#Through reading a certain input file
#in addition, this code will count the amount of open and closed sesssions that were in that file
#In addition, this code will display and print out a list of closed connections and IP address that are involved
############################################################################################################################

#Input File
inputFile=$1 

#if there are open cron sessions in the file for root as they are unique and sorted by the version number while searching them
if grep 'session opened for user root' $inputFile|sort -V|uniq -c; then
#Reads into the file for the unique open cron sessions of the input file and prints it to the output file
cat $inputFile|grep -i 'session opened for user root' |sort -V|uniq -c >> OpenCronRoot.txt
#Count the number of unique instances of those sessions and display it on the command line
grep -c 'session opened for user root' $inputFile
#Call out the notification that the number of open sessions for root is printed in the command line
	echo 'Here is the number of open cron sessions in this file for the user root'
#if there are no open cron sessions in the file
else
	echo 'There are no open cron sessions in this file for the user root' #print that there are no open cron sessions in this session
fi

#if there are open cron sessions in the file for ubuntu as they are unique and sorted by the version number while searching them
if grep 'session opened for user ubuntu' $inputFile|sort -V|uniq -c; then
#Reads into the file for the unique open cron sessions of the input file and prints it to the output file 
cat $inputFile|grep -i 'session opened for user ubuntu' |sort -V|uniq -c >> OpenCronUbuntu.txt
#Counts the open sessions and display the number on the command line
grep -c 'session opened for user ubuntu' $inputFile    
#Call out the notification that the number of open cron sessions for ubuntu that has been printed
        echo 'Here is the number of open cron sessions in this file for the user ubuntu'
#if there are no open cron sessions in the file 
else    
        echo 'There are no open cron sessions in this file for the user ubuntu'
fi


#if there are closed cron sessions in the file for the user root that are unique and sorted out while they are being searched
if grep 'session closed for user root' $inputFile|sort -V|uniq -c; then
#Read for the unique closed cron sessions of the input file and prints it to the output file
cat $inputFile|grep -i 'session closed for user root'|sort -V|uniq -c >> ClosedCronRoot.txt
##Counts the closed sessions and display the number on the command line
grep -c 'session closed for user root' $inputFile 
#Call out a notification that the number of closed sessions for root is printed
        echo 'Here is the number of closed cron sessions in this file for root' #Display a notification to declare the number of sessions above this statement
#if there are no closed cron sessions in the file 
else 
        echo 'There are no closed cron sessions in this file' #Calls out that there are no closed sessions in the file
fi

#if there are closed cron sessions in the file for ubuntu that are uniqure and sorted out while they are being searched
if grep 'session closed for user ubuntu' $inputFile|sort -V|uniq -c; then
#Read for the unique closed cron sessions of the input file and prints it to the output file
cat $inputFile|grep -i 'session closed for user ubuntu'|sort -V|uniq -c >> ClosedCronUbuntu.txt
#Counts the closed sesssions for ubunut and display the number on the command line
grep -c 'session closed for user ubuntu' $inputFile 
#Call out a notification that the number of closed sessions for unbuntu is printed
        echo 'Here is the number of closed cron sessions in this file for user ubuntu'
#if there are no closed cron sessions in the file 
else    
        echo 'There are no closed cron sessions in this file for user ubuntu' #Calls out that there are no closed sessions in the file
fi





