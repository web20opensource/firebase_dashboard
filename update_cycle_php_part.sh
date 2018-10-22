#!/bin/bash

#title           :update_cycle_php_part.sh
#description     :This script will update the firebase json db with marketing cloud monitored data
#dependencies    :firebase, marketing cloud prod DE gen (genResumeSent folder)
#author          :Mario Ruiz <web2.0opensource@gmail.com>
#date            :08/16/2018
#version         :1
#usage           :./update_cycle_php_part.sh
#bash_version    :4.4.12(1)-release
#==============================================================================


#read resultSet from the Data Extension
cd ~/prod_dashboard/genResumeSent
php genResumeSent.php PROD
cd ..

scp Transfer_Sent_Resume_PROD.csv user@server:/home/xb91/prod_dashboard/

exit
