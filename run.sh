source .venv/bin/activate
export OPENAI_API_KEY=$VUS_OPENAI_API_KEY
export DISK_USE_WARNING_PERCENTAGE=95
export DISK_USE_READONLY_PERCENTAGE=98
export BACKUP_FILESYSTEM_PATH=/home/armin/temp/weaviate
export VERBA_PRODUCTION=False
verba start $*
