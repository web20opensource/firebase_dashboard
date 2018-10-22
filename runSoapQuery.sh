#!/bin/bash

#title           :update_cycle.sh
#description     :This script will update the firebase json db with marketing cloud monitored data
#dependencies    :firebase, marketing cloud prod DE gen (genResumeSent folder)
#author          :Mario Ruiz <web2.0opensource@gmail.com>
#date            :08/15/2018
#version         :1
#usage           :./update_cycle.sh
#bash_version    :4.4.12(1)-release
#==============================================================================

#run the t-sql query


user=$(head -1  user.txt)
pass=$(head -1  pass.txt)

host=webservice.s7.exacttarget.com
soapEndpoint=https://${host}/Service.asmx

runQuery=$(sed  -e "s/\${user}/$user/" -e "s/\${password}/$pass/" runQuery_v1.xml | tr "\n" " " | tr "'" "\"")

curl --header "Content-Type: text/xml;charset=UTF-8" --header "SOAPAction:\"Perform\" " --header "Host: ${host}" --header "Connection: Keep-Alive" --data "${runQuery}" ${soapEndpoint} --verbose --trace-ascii /dev/stdout

exit
