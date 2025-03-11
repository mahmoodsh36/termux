#!/usr/bin/env sh

# rsync -Pa --delete -e 'ssh -i /sdcard/brain/keys/hetzner1' --exclude '*.mp4' --exclude '*venv*' --exclude '*mail*' mahmooz@192.168.1.100:/home/mahmooz/brain /sdcard

# hostname=$(find_computers.py print_ips | head -1)
# ip=$(echo "$hostname" | cut -d ':' -f1)
# port=$(echo "$hostname" | cut -d ':' -f2)
# if [ -z "$port" ]; then
#     port=22
# fi
# if [ ! -z "$hostname" ]; then
#     rsync -Pa --delete -e "ssh -i /sdcard/brain/keys/hetzner1 -p $port" --exclude '*.mp4' --exclude '*venv*' --exclude '*mail*' mahmooz@"$ip":/home/mahmooz/brain /sdcard
# else
#     echo no server
# fi

# rsync -Pa --delete -e 'ssh -i /sdcard/brain/keys/hetzner1' --exclude '*.mp4' --exclude '*venv*' --exclude '*mail*' mahmooz@mahmooz:/home/mahmooz/brain /sdcard

# exclude all except specific files
rsync --archive -e 'ssh -i /sdcard/brain/keys/hetzner1' --update --prune-empty-dirs --include='*.pdf' --include='*.org' --include='*/' --exclude='*' mahmooz@mahmooz:/home/mahmooz/brain /sdcard