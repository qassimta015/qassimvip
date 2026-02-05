FROM alpine:latest

# تثبيت أحدث نسخة من Xray مباشرة
RUN apk add --no-cache curl && \
    bash -c "$(curl -L https://github.com/XTLS/Xray-install/raw/main/install-release.sh)" @ install

COPY config.json /etc/xray/config.json
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# جوجل كلاود يتطلب العمل على بورت 8080 افتراضياً
EXPOSE 8080

ENTRYPOINT ["/entrypoint.sh"]
