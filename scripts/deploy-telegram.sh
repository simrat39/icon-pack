#!/usr/bin/env sh
curl -F chat_id="-1001377242808" -F text="$(./scripts/changelog.sh)" -F parse_mode="HTML" https://api.telegram.org/bot$BOT_TOKEN/sendMessage
curl -F chat_id="-1001377242808" -F document=@"SimsIconPack-$TRAVIS_BUILD_NUMBER.apk" -F parse_mode="HTML" https://api.telegram.org/bot$BOT_TOKEN/sendDocument

echo $(./scripts/changelog.sh)