date=`date +%d-%m-%Y-%H:%M`
log=number_connection-$date
mkdir -p /User/alshakmatar/Desktop/shell.exe/job8/Backup
grep -a  alshakmatar /var/log/auth.log | wc -l |gzip > /User/alshakmatar/Desktop/shell/exe/job8/Backup_$log.gz 

