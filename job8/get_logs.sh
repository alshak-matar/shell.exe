date=`date +%d-%m-%Y-%H:%M`
log=number_connection-$date
last alshakmatar |grep alshakmatar |wc -l |cat>./number_connection-$date && tar -czvf $log.tar.gz ./$log
rm $log
mv $log.tar.gz ./Backup 

