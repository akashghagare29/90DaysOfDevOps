# Day 19 – Log Rotation, Backup & Crontab

## Task 1: Log Rotation

**log_rotate.sh**
```bash
#!/bin/bash

LOG_DIR=$1

if [ ! -d "$LOG_DIR" ]; then
    echo "Directory doesn't exist"
    exit 1
fi

# Compress logs older than 7 days
COMPRESSED=$(find "$LOG_DIR" -name "*.log" -mtime +7 -exec gzip {} \; -print | wc -l)

# Delete .gz older than 30 days
DELETED=$(find "$LOG_DIR" -name "*.gz" -mtime +30 -delete -print | wc -l)

echo "Compressed: $COMPRESSED files"
echo "Deleted: $DELETED old archives"
```

Ran it:
```
./log_rotate.sh /var/log/
Compressed: 0 files
Deleted: 0 old archives
```

---

## Task 2: Backup Script

**backup.sh**
```bash
#!/bin/bash

SOURCE=$1
DEST=$2

if [ ! -d "$SOURCE" ]; then
    echo "Source doesn't exist"
    exit 1
fi

mkdir -p "$DEST"

DATE=$(date +%Y-%m-%d)
BACKUP="$DEST/backup-$DATE.tar.gz"

tar -czf "$BACKUP" "$SOURCE"

if [ $? -eq 0 ]; then
    du -h "$BACKUP"
else
    echo "Failed"
fi

# Delete old backups
find "$DEST" -name "*.tar.gz" -mtime +14 -delete
```

Tested:
```
./backup.sh /home/data /backup
45M    /backup/backup-2026-02-08.tar.gz
```

---

## Task 3: Crontab

Cron format:
```
minute hour day month weekday command
```

What I wrote:
```bash
# Log rotation daily at 2 AM
0 2 * * * /scripts/log_rotate.sh /var/log/

# Backup every Sunday at 3 AM
0 3 * * 0 /scripts/backup.sh /home/data /backup

# Health check every 5 minutes
*/5 * * * * /scripts/health_check.sh
```

---

## Task 4: Maintenance Script

**maintenance.sh**
```bash
#!/bin/bash

LOG="/var/log/maintenance.log"

echo "$(date): Starting" >> $LOG

/scripts/log_rotate.sh /var/log/ >> $LOG 2>&1
/scripts/backup.sh /home/data /backup >> $LOG 2>&1

echo "$(date): Done" >> $LOG
```

Cron:
```
0 1 * * * /scripts/maintenance.sh
```

Log output:
```
Sat Feb  8 01:00:00 UTC 2026: Starting
Done
45M    /backup/backup-2026-02-08.tar.gz
Sat Feb  8 01:00:15 UTC 2026: Done
```

---

## What I learned

- `find -mtime +7` = files older than 7 days
- Cron `*/5` = every 5 minutes
- Always redirect errors to log: `>> log 2>&1`
