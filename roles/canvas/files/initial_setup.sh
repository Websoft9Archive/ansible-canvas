# sample for init password of Canvas
export RAILS_ENV=production
export CANVAS_LMS_ADMIN_EMAIL=help@websoft9.com
export CANVAS_LMS_ADMIN_PASSWORD=newpassword
export CANVAS_LMS_ACCOUNT_NAME=admin
export CANVAS_LMS_STATS_COLLECTION=opt_in
cd /data/wwwroot/canvas; bundle exec rake db:initial_setup