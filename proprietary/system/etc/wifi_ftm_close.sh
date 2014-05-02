# 退出WIFI FTM. 
# 此功能由YL11389增加
pid=`ps | busybox grep ptt_socket_app | busybox awk '{print $2}'`
kill $pid
rmmod libra_ftm.ko
rmmod librasdioif.ko