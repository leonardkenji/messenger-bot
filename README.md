# Messenger Bot

A Rails application that receives messages from Facebook Messenger, stores them in a database, and is designed to reply using GPT-4.

## How it works

1. Facebook sends a POST request to `/webhook` when a user sends a message
2. The app extracts the sender ID and message content from the payload
3. A `Customer` is created (or found) by their Facebook sender ID
4. A `Conversation` and `Message` are created and stored in the database

## Stack

- Ruby on Rails
- Facebook Messenger Webhook API
- PostgreSQL

## Setup

1. Clone the repo and install dependencies:
```bash
bundle install
```

2. Set up the database:
```bash
rails db:create db:migrate
```

3. Set the environment variables:
```
FACEBOOK_VERIFY_TOKEN=your_verify_token
FACEBOOK_PAGE_ACCESS_TOKEN=your_page_access_token
```

4. Expose your local server using ngrok:
```bash
ngrok http 3000
```

5. Register the ngrok URL as your webhook in the Facebook Developer Portal:
```
https://your-ngrok-url.ngrok.io/webhook
```

## Webhook endpoints

| Method | Path | Description |
|--------|------|-------------|
| GET | `/webhook` | Facebook verification handshake |
| POST | `/webhook` | Receives incoming messages |
