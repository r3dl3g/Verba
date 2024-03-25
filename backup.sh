#!/bin/bash
set -e

# Create backup
## Author
echo -e "\nCreating Backup"

curl \
-X POST \
-H "Content-Type: application/json" \
-d '{
     "id": "amf-backup-2024-03-23"
    }' \
http://localhost:6666/v1/backups/filesystem