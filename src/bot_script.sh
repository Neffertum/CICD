#! /bin/bash

TELEGRAM_BOT_TOKEN="6127853165:AAGW_RxPW403YMYE_uYCWJAHYQfKDxYilck"
TELEGRAM_USER_ID="691548266"

URL="https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage"
TEXT="$CI_COMMIT_AUTHOR $CI_PROJECT_NAME%0A%0A$1 status: $CI_JOB_STATUS"

curl -s -d "chat_id=$TELEGRAM_USER_ID&disable_web_page_preview=1&text=$TEXT" $URL > /dev/null