#!/bin/bash
# Direct deploy to Vercel - run these commands in your terminal
# This deploys your local files straight to Vercel (fixes GitHub sync issues)

echo "Deploying to Vercel..."
vercel --prod
