sudo kill $(fuser -n tcp fuser -n tcp 2368 2> /dev/null)
nohup npm start --production &
