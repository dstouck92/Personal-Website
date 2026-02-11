# Deployment Guide - GitHub to Vercel

## Step 1: Connect GitHub Repository to Vercel

1. **Go to Vercel Dashboard**
   - Visit [vercel.com](https://vercel.com)
   - Sign in (or create an account if you don't have one)
   - You can sign in with your GitHub account for easier integration

2. **Import Your Project**
   - Click the **"Add New..."** button (top right)
   - Select **"Project"**
   - You'll see a list of your GitHub repositories
   - Find your **Personal-Website** repository and click **"Import"**

3. **Configure Project Settings**
   - **Framework Preset**: Select "Other" or leave as "Other" (Vercel will auto-detect it's a static site)
   - **Root Directory**: Leave as `./` (unless your files are in a subfolder)
   - **Build Command**: Leave empty (no build needed for static HTML)
   - **Output Directory**: Leave empty (or set to `./` if required)
   - Click **"Deploy"**

4. **Wait for Deployment**
   - Vercel will deploy your site automatically
   - This usually takes 30-60 seconds
   - You'll get a URL like: `your-project-name.vercel.app`

## Step 2: Connect Your GoDaddy Domain

1. **In Vercel Dashboard**
   - Go to your project
   - Click on **"Settings"** (top navigation)
   - Click on **"Domains"** (left sidebar)

2. **Add Your Domain**
   - Enter your domain (e.g., `yourdomain.com` or `www.yourdomain.com`)
   - Click **"Add"**
   - Vercel will show you DNS configuration options

3. **Choose DNS Configuration Method**

   **Option A: Use Vercel's Nameservers (Easiest)**
   - Vercel will provide nameservers (e.g., `ns1.vercel-dns.com`, `ns2.vercel-dns.com`)
   - In GoDaddy:
     - Go to your domain's **DNS Management**
     - Change nameservers to Vercel's nameservers
     - Save changes
   - Wait 5-60 minutes for DNS propagation

   **Option B: Keep GoDaddy Nameservers (More Control)**
   - In GoDaddy DNS Management, add these records:
     - **A Record**: 
       - Name: `@` (or leave blank)
       - Value: `76.76.21.21` (Vercel's IP - check Vercel dashboard for current IPs)
     - **CNAME Record**:
       - Name: `www`
       - Value: `cname.vercel-dns.com`
   - Wait for DNS propagation

4. **SSL Certificate**
   - Vercel automatically provisions SSL certificates
   - Once DNS is configured, your site will be available at `https://yourdomain.com`
   - This usually happens automatically within a few minutes

## Step 3: Verify Everything Works

1. Visit your Vercel URL: `https://your-project-name.vercel.app`
2. Visit your custom domain: `https://yourdomain.com`
3. Both should show your website

## Troubleshooting

### If your site doesn't load:
- Check that `index.html` is in the root of your repository
- Verify the HTML file is committed and pushed to GitHub
- Check Vercel deployment logs for errors

### If your domain doesn't connect:
- Wait 24-48 hours for DNS propagation (usually much faster)
- Verify DNS records are correct in GoDaddy
- Check Vercel domain settings show "Valid Configuration"

### If you need to update your site:
- Just push changes to GitHub
- Vercel will automatically redeploy

## Quick Commands (if using CLI)

If you prefer command line:
```bash
# Install Vercel CLI
npm install -g vercel

# Login
vercel login

# Link to existing project or create new
vercel link

# Deploy
vercel --prod
```
