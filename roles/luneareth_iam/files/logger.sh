if [ "x$session_record" = "x" ]
then
timestamp=`date "+%m%d%Y%H%M"`
output=/var/log/session/session.$USER.$$.$timestamp
session_record=started
export session_record
script -t -f -q 2>${output}.timing $output
exit
fi