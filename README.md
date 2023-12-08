# IS580-691-Final-Project

#The purpose of this code is to display and print out a list of open and 
closed cron sessions(without any duplicates)
#in 4 separate output files for the users root and ubuuntu(2 per each) 
as it will print a list of those sessions one of each
#Through reading a certain input file
#in addition, this code will count the amount of open and closed sesssions 
that were in that file
Code layout:
The code will provide an if statement for the open cron session for root
if grep 'session opened for user root' $inputFile|sort -V|uniq -c; then
As it explains that if there is an open session for the root user of a 
particular file that is sorted by the version number and unique, then it 
must follow these operations
To start it will read into this particular file as it should extract the 
unique and sorted open cron sessions for root in to the outfile 
OpenCronRoot
cat $inputFile|grep -i 'session opened for user root' |sort -V|uniq -c >> 
OpenCronRoot.txt
Then It will count the number of those instances by using the grep command 
to count them
grep -c 'session opened for user root' $inputFile
Afterwards it will call out that the open cron sessions and the number of 
them are printed
echo 'Here is the number of open cron sessions in this file for the user 
root'
If there are no open cron sessions then it will create a message that 
there are no open cron sessions shown for the user root
else
echo 'There are no open cron sessions in this file for the user 
root'
This applys to the open cron sessions for ubuntu, closed cron 
sessions for root, and closed cron sessions for ubuntu with the different 
output files OpenCronUbuntu, ClosedCronRoot, and ClosedCronUbuntu
How the code is used for the command line:
1. Type in ./FinalProject.sh file(ex.Williams.20231201_0712.34-216-62-
137-auth.log)
2. The command line will start by showing the open cron sessions from 
root along with the number lines and the notification that it is 
printed
3. Afterwards, it will show the open cron sessions of ubuntu along with 
the number lines and the notification that it is printed
. The command line will start by showing the closed cron sessions from 
root along with the number lines and the notification that it is printed
4. Afterwards, it will show the closed cron sessions of ubuntu along with 
the number lines and the notification that it is printed
Command Line Examples
While the following file has about 66117 lines I will limit them to a few 
of the sessions to showcase an easy to see example
Ex. ./FinalProject.sh Williams.20231201_0712.34-216-62-137-auth.log
The output would be
Open root
1 Dec 1 00:17:01 ip-172-31-22-84 CRON[6767]: pam_unix(cron:session): 
session opened for user root by (uid=0)
1 Dec 1 01:17:01 ip-172-31-22-84 CRON[7280]: 
pam_unix(cron:session): session opened for user root by (uid=0)
1 Dec 1 02:17:01 ip-172-31-22-84 CRON[7377]: 
pam_unix(cron:session): session opened for user root by (uid=0)
1 Dec 1 03:17:01 ip-172-31-22-84 CRON[7594]: 
pam_unix(cron:session): session opened for user root by (uid=0)
1 Dec 1 04:17:01 ip-172-31-22-84 CRON[8742]: 
pam_unix(cron:session): session opened for user root by (uid=0)
1 Dec 1 05:17:01 ip-172-31-22-84 CRON[8961]: 
pam_unix(cron:session): session opened for user root by (uid=0)
1 Dec 1 06:17:01 ip-172-31-22-84 CRON[9020]: 
pam_unix(cron:session): session opened for user root by (uid=0)
1 Dec 1 06:25:01 ip-172-31-22-84 CRON[9099]: 
pam_unix(cron:session): session opened for user root by (uid=0)
1 Dec 1 06:52:01 ip-172-31-22-84 CRON[9253]: 
pam_unix(cron:session): session opened for user root by (uid=0)
.
.
.
123
Here is the number of open cron sessions in this file for the user root
1 Dec 1 02:24:00 ip-172-31-22-84 sshd[7382]: 
pam_unix(sshd:session): session opened for user ubuntu by (uid=0)
1 Dec 1 02:24:00 ip-172-31-22-84 systemd: pam_unix(systemduser:session): session opened for user ubuntu by (uid=0)
1 Dec 1 12:42:24 ip-172-31-22-84 sshd[10761]: 
pam_unix(sshd:session): session opened for user ubuntu by (uid=0)
1 Dec 1 12:42:24 ip-172-31-22-84 systemd: pam_unix(systemduser:session): session opened for user ubuntu by (uid=0)
1 Dec 1 23:01:39 ip-172-31-22-84 sshd[12418]: 
pam_unix(sshd:session): session opened for user ubuntu by (uid=0)
1 Dec 1 23:01:39 ip-172-31-22-84 systemd: pam_unix(systemduser:session): session opened for user ubuntu by (uid=0)
6
Here is the number of open cron sessions in this file for the user ubuntu
Closed root
1 Dec 1 00:17:01 ip-172-31-22-84 CRON[6767]: 
pam_unix(cron:session): session closed for user root
1 Dec 1 01:17:01 ip-172-31-22-84 CRON[7280]: 
pam_unix(cron:session): session closed for user root
1 Dec 1 02:17:01 ip-172-31-22-84 CRON[7377]: 
pam_unix(cron:session): session closed for user root
1 Dec 1 03:17:01 ip-172-31-22-84 CRON[7594]: 
pam_unix(cron:session): session closed for user root
1 Dec 1 04:17:01 ip-172-31-22-84 CRON[8742]: 
pam_unix(cron:session): session closed for user root
.
.
.
.
1 Nov 30 17:17:01 ip-172-31-22-84 CRON[5354]: 
pam_unix(cron:session): session closed for user root
1 Nov 30 18:17:01 ip-172-31-22-84 CRON[6059]: 
pam_unix(cron:session): session closed for user root
1 Nov 30 19:17:01 ip-172-31-22-84 CRON[6197]: 
pam_unix(cron:session): session closed for user root
1 Nov 30 20:17:01 ip-172-31-22-84 CRON[6380]: 
pam_unix(cron:session): session closed for user root
1 Nov 30 21:17:01 ip-172-31-22-84 CRON[6447]: 
pam_unix(cron:session): session closed for user root
1 Nov 30 22:17:01 ip-172-31-22-84 CRON[6652]: 
pam_unix(cron:session): session closed for user root
1 Nov 30 23:17:01 ip-172-31-22-84 CRON[6701]: 
pam_unix(cron:session): session closed for user root
124
Here is the number of closed cron sessions in this file for root
1 Dec 1 04:41:42 ip-172-31-22-84 sshd[7382]: 
pam_unix(sshd:session): session closed for user ubuntu
1 Dec 1 15:24:26 ip-172-31-22-84 sshd[10761]: 
pam_unix(sshd:session): session closed for user ubuntu
2
Here is the number of closed cron sessions in this file for user ubuntu
