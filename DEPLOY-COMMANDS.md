# Deploy Your Updates to Vercel

If pushing to GitHub isn't updating the live site, deploy directly with Vercel CLI.

## Option 1: Direct Vercel Deploy (Recommended)

Run these commands in your terminal, one at a time:

```bash
cd "/Users/davidstouck/Personal Website/Personal-Website"
```

```bash
npm install -g vercel
```

```bash
vercel login
```
*(Opens browser to log in if needed)*

```bash
vercel --prod
```

The last command will output your live URL (e.g. `https://personal-website-xxxx.vercel.app`). Use that link.

---

## Option 2: GitHub + Vercel (if GitHub sync is set up)

```bash
cd "/Users/davidstouck/Personal Website/Personal-Website"
git add -A
git status
git commit -m "Update website" 
git push origin main
```

Then wait 1–2 minutes and check your Vercel dashboard for the new deployment.

---

## First Time Using Vercel CLI?

If `vercel --prod` asks "Set up and deploy?", answer **Y** and:

- **Link to existing project?** → **Y** (if you already have a Vercel project)
- **What's your project's name?** → `personal-website` (or your project name)

If you don't have a project yet, answer **N** to create a new one.
