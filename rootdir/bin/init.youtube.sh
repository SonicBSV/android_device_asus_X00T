#! /vendor/bin/sh

# Clean update YouTube Vanced in Google Play Merket

PKGNAME="com.google.android.youtube"

if [ -f /data/data/com.android.vending/databases/library.db ]; then
 if A=$(find /data/app/ -type d -maxdepth 1 -name "$PKGNAME*"; ); [[ "$A" = "" && ! -d /system/app/YouTube ]]
 then
    rm -rf /data/data/com.android.vending/cache/main/*
    /system/bin/cmd package disable com.google.android.youtube/com.firebase.jobdispatcher.GooglePlayReceiver
    /system/bin/sqlite3 -batch /data/data/com.android.vending/databases/library.db "delete FROM ownership WHERE doc_id like '$PKGNAME%'"
    /system/bin/sqlite3 -batch /data/data/com.android.vending/databases/library.db "create trigger if not exists CleanYouTube before insert on ownership when NEW.doc_id like '$PKGNAME%' begin SELECT RAISE(IGNORE); end;"
    /system/bin/sqlite3 -batch /data/data/com.android.vending/databases/localappstate.db "DELETE from appstate where package_name like '$PKGNAME%'"
    /system/bin/sqlite3 -batch /data/data/com.android.vending/databases/localappstate.db "create trigger if not exists CleanYouTube before insert on appstate when (NEW.package_name like '$PKGNAME%') begin SELECT RAISE(IGNORE); end;"
    /system/bin/sqlite3 -batch /data/data/com.android.vending/databases/install_queue.db "DELETE from install_requests where pk like '$PKGNAME%'"
    /system/bin/sqlite3 -batch /data/data/com.android.vending/databases/install_queue.db "create trigger if not exists CleanYouTube before insert on install_requests when (NEW.pk like '$PKGNAME%') begin SELECT RAISE(IGNORE); end;"
 else
    /system/bin/sqlite3 -batch /data/data/com.android.vending/databases/library.db "DROP trigger if exists CleanYouTube"
    /system/bin/sqlite3 -batch /data/data/com.android.vending/databases/localappstate.db "DROP trigger if exists CleanYouTube"
    /system/bin/sqlite3 -batch /data/data/com.android.vending/databases/install_queue.db "DROP trigger if exists CleanYouTube"
    /system/bin/cmd package enable com.google.android.youtube/com.firebase.jobdispatcher.GooglePlayReceiver
 fi
fi