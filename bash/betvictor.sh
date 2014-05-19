export BV_CODE_DIR=~/Code
export BV_CMS_DIR=$BV_CODE_DIR/zaynar_cms
export BV_ZAYNAR_DIR=$BV_CODE_DIR/zaynar

alias bv_start_cms="cd $BV_CMS_DIR && be rails s -p3001 -d"
alias bv_stop_cms="cat $BV_CMS_DIR/tmp/pids/server.pid | xargs kill"

alias bv_restart_cms="bv_stop_cms || bv_start_cms"

alias bv_start_zaynar="cd $BV_ZAYNAR_DIR && be rails s -p3000 -d"
alias bv_stop_zaynar="cat $BV_ZAYNAR_DIR/tmp/pids/server.pid | xargs kill"

alias bv_restart_zaynar="bv_stop_zaynar || bv_start_zaynar"

alias bv_restart_all="bv_restart_cms || bv_restart_zaynar" # 
