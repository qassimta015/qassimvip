#!/bin/sh

# استبدال القيم القادمة من البوت داخل ملف الإعداد
sed -i "s/MY_UUID/${UUID}/g" /etc/xray/config.json
sed -i "s/MY_PATH/${WSPATH}/g" /etc/xray/config.json

echo "Xray is starting with latest version..."
/usr/local/bin/xray run -c /etc/xray/config.json

