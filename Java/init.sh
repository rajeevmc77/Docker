#!/bin/bash
echo "Starting to Execute Java Process"  >>  /myvol/status.txt
mkdir /myvol/test
echo "Let us dump this to new folder" > /myvol/test/testfile.txt
iter=0
while [ $iter -lt 5 ] ; do	
	java  -XX:+HeapDumpOnOutOfMemoryError  -XX:HeapDumpPath="/heap-dump.hprof"  main	
	status=`echo $?`
	echo "  Java Process completed with status $status" >>  /myvol/status.txt
    let iter=iter+1	
done
  


#!/bin/bash
#filename=/myvol/Geek.txt
#maxsize=1000
#filesize=$(stat -c%s "$filename")

#echo "current PID is $$ " >> /myvol/PID.txt

#if (( filesize > maxsize )); then
#    exit 0
#fi


#java  -XX:OnOutOfMemoryError="/bin/bash /init.sh" -XX:+HeapDumpOnOutOfMemoryError  -XX:HeapDumpPath="/heap-dump.hprof"  main

#echo "  Java Process completed  $?" >>  /myvol/status.txt
#echo "Starting to Execute Java Process"  >>  /myvol/status.txt
#while true ; do	
	java  -XX:+HeapDumpOnOutOfMemoryError  -XX:HeapDumpPath="/heap-dump.hprof"  main	
	status=`echo $?`
#	echo "  Java Process completed with status $status" >>  /myvol/status.txt
#	lines=`wc -l < /myvol/status.txt`
#	if (( $lines > 5 )); then
#		exit 0
#	fi	
#done