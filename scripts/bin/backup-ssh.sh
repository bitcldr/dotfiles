#!/usr/bin/env bash

set -euo pipefail

DO_NAS=false
DO_S3=false

while [[ $# -gt 0 ]]; do
  case $1 in
    --nas) DO_NAS=true ;;
    --s3) DO_S3=true ;;
    *) echo "unknown flag: $1"; exit 1 ;;
  esac
  shift
done

# default: both targets
if ! $DO_NAS && ! $DO_S3; then
  DO_NAS=true
  DO_S3=true
fi

if $DO_NAS; then
  echo "==> syncing to NAS..."
  rsync --archive --verbose --progress --exclude='agent/' ~/.ssh/ /Volumes/home/Backup/ssh
fi

if $DO_S3; then
  echo "==> syncing to S3..."
  : "${BACKUP_S3_REMOTE:?BACKUP_S3_REMOTE is not set}"
  : "${BACKUP_S3_PATH:?BACKUP_S3_PATH is not set}"
  rclone sync ~/.ssh/ "$BACKUP_S3_REMOTE:$BACKUP_S3_PATH" --exclude='agent/**'
fi
