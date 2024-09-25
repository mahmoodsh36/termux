#!/usr/bin/env sh
rsync -Pa --delete -e 'ssh -i /sdcard/brain/keys/hetzner1' --exclude '*.mp4' --exclude '*mail*' mahmooz@192.168.1.100:/home/mahmooz/brain /sdcard
