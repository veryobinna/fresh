#!/bin/sh

if [ "$NODE_ENV" = "production" ]; then
    echo "Starting Next.js in production mode..."
    npm run build
    npm start
else
    echo "Starting Next.js in development mode..."
    npm run dev
fi