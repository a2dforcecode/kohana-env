docker-compose up -d
echo "staring db restore"
sleep 5
sh mysql-restore.sh