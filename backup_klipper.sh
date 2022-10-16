rm -r printer-2*.cfg
cp ~/printer_data/database/*.* ~/printer_data/backup/git/database
cp ~/printer_data/config/*.* ~/printer_data/backup/git/config
TIMESTAMP=`date +%y-%m-%d_%T`
cd ~/printer_data/backup/git
git add .
git commit -m "Backup_$TIMESTAMP"
git push -u origin master
cd ~/scripts
git pull
