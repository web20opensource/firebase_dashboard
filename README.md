# firebase_dashboard

Given a firebase database we can gather on real time data per further analysis and understand better the information flow. 

This project uses firebase, firebase-import, npm, tools to convert form json to csv, cron to push new data into the database. 

This projects is created per the necessity of real time monitoring of certain data that if is missing coudl cause problems for end users.

process.js will run the command update_cycle.sh every 3 minutes. 

csv2json.js will convert a json file to a csv file

update_cycle.sh is teh scripts than glue all together. It updates the DB with new data.
