var CronJob = require('cron').CronJob;
const shell = require('shelljs');

new CronJob('*/3 * * * *', function() {
  console.log('lets rock');
  shell.exec('~/prod_dashboard/update_cycle.sh')
}, null, true, 'America/Los_Angeles');
