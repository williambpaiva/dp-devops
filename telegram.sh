BOT_TOKEN="7082971552:AAGbOG6amP--nccNR9Oxpr4cdJylx-3f2zU"
BOT_URL="https://api.telegram.org/bot${TELEGRAM_TOKEN}/sendMessage"

# Set formatting for the message. Can be either "Markdown" or "HTML"
PARSE_MODE="Markdown"

# echo "${CI_JOB_STATUS}"

echo "${CI_JOB_STATUS}"

# echo "${BOT_URL}"
# echo "$TELEGRAM_CHAT_ID"
# echo "${TELEGRAM_CHAT_ID}"

# echo "${PARSE_MODE}"

# Define send message function. parse_mode can be changed to
# HTML, depending on how you want to format your message:

MESSAGE="
-------------------------------------
Gitlab build *${CI_JOB_STATUS}!*
\`Repository:  ${CI_PROJECT_DIR}\`
\`Branch:      ${CI_COMMIT_BRANCH}\`
*Commit Msg:*
${CI_COMMIT_MESSAGE}
--------------------------------------
"

# echo "${MESSAGE}"
# echo "$MESSAGE"

curl -s -X POST ${BOT_URL} -d chat_id=-4174824757 -d text="${MESSAGE}" -d parse_mode=${PARSE_MODE}
