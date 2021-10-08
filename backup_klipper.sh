cp ~/.moonraker_database/*.mdb ~/klipper_config/Backup_Moonraker/.
cd ~/klipper_config/
TIMESTAMP=`date +%y-%m-%d_%T`
git add .
git commit -m "Backup_$TIMESTAMP"
git push -u origin master
cd ~/scripts
git clone https://github.com/angeljrgsr/klipper_scripts.git .
