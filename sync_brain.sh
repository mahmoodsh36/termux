#!/usr/bin/env sh
rsync -Pa --delete -e 'ssh -i /sdcard/brain/keys/hetzner1' 192.168.1.188:/home/mahmoz/brain /sdcard --exclude '*.mp4' --exclude '*mail*'