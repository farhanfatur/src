sudo kill $(fuser -n tcp fuser -n tcp 2368 2> /dev/null)

log_dirpath="/var/log/ghost/"
log_filename="log-$(date +%Y-%m-%d-%H-%M-%S).txt"
log_filepath="${log_dirpath}${log_filename}"
mkdir -p "$log_dirpath"
echo "log created at $log_filepath"
touch "$log_filepath"

nohup npm start --production > "$log_filepath" &
