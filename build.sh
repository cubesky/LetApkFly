#/bin/sh
apt install dos2unix
dos2unix run_sync
chmod +x run_sync
docker build -t letapkfly .