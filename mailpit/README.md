# Mailpit

## Send en email from the Terminal

```bash
curl --url smtp://localhost:1025 \
     --mail-from sender@example.com \
     --mail-rcpt recipient@example.com \
     --upload-file ./mailpit/email.txt
```

## Inbox

```bash
http://127.0.0.1:8025/
```

## Credentials in Laravel (.env)

```bash
MAIL_MAILER=smtp
MAIL_SCHEME=null
MAIL_HOST=mailpit
MAIL_PORT=1025
MAIL_USERNAME=null
MAIL_PASSWORD=null
MAIL_FROM_ADDRESS="hello@example.com"
MAIL_FROM_NAME="${APP_NAME}"
```