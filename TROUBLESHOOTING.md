# Troubleshooting Guide - Site Not Working

## Common Issues and Fixes

### Issue 1: Site Shows Blank Page or 404 Error

**Possible Causes:**
- HTML file not committed/pushed to GitHub
- Vercel not detecting the correct file
- Build configuration issue

**Fix:**
1. **Verify file is on GitHub:**
   - Go to your GitHub repository
   - Check that `index.html` exists in the root directory
   - Verify it has your content (not just placeholder text)

2. **Check Vercel Deployment:**
   - Go to Vercel dashboard → Your project → Deployments
   - Click on the latest deployment
   - Check the "Build Logs" for any errors
   - Look for messages about missing files or build failures

3. **Redeploy:**
   - In Vercel dashboard, go to Deployments
   - Click the three dots (⋯) on the latest deployment
   - Select "Redeploy"

### Issue 2: Domain Connected But Site Not Loading

**Possible Causes:**
- DNS not fully propagated
- Incorrect DNS records
- SSL certificate not issued yet

**Fix:**
1. **Check DNS Status:**
   - In Vercel: Settings → Domains
   - Check if your domain shows "Valid Configuration"
   - If it shows an error, follow the instructions to fix DNS records

2. **Verify DNS Records in GoDaddy:**
   - Log into GoDaddy
   - Go to DNS Management for davidstouck.net
   - Verify you have the correct records:
     - **A Record** pointing to Vercel's IP (or)
     - **CNAME Record** pointing to `cname.vercel-dns.com`
   - If using nameservers, verify they're set to Vercel's nameservers

3. **Wait for Propagation:**
   - DNS changes can take 5 minutes to 48 hours
   - Use a tool like [whatsmydns.net](https://www.whatsmydns.net) to check propagation
   - Enter `davidstouck.net` and check if it points to Vercel

4. **Check SSL Certificate:**
   - In Vercel: Settings → Domains
   - Your domain should show "Valid" status
   - SSL certificates are issued automatically but can take a few minutes

### Issue 3: Site Shows Old Content or Not Updated

**Fix:**
1. **Verify GitHub has latest code:**
   ```bash
   git status
   git add .
   git commit -m "Update site"
   git push
   ```

2. **Trigger Vercel Redeploy:**
   - Vercel should auto-deploy when you push to GitHub
   - If not, manually redeploy from Vercel dashboard

### Issue 4: HTML File Structure Issues

**Check:**
1. **File must be named exactly:** `index.html` (lowercase, no spaces)
2. **File must be in root directory** (not in a subfolder)
3. **File must start with:** `<!DOCTYPE html>`
4. **File must have proper closing tags:** `</html>` at the end

### Quick Diagnostic Steps

1. **Test Vercel URL first:**
   - Visit `https://your-project-name.vercel.app`
   - If this works, the issue is with domain configuration
   - If this doesn't work, the issue is with the deployment

2. **Check Vercel Build Logs:**
   - Go to Vercel dashboard → Your project → Deployments
   - Click on latest deployment → View Function Logs
   - Look for any error messages

3. **Verify GitHub Repository:**
   - Make sure `index.html` is in the root
   - Make sure it's committed (not just staged)
   - Make sure it's pushed to the main/master branch

4. **Clear Browser Cache:**
   - Try opening the site in an incognito/private window
   - Or clear your browser cache

## Still Not Working?

If none of these fix the issue, check:

1. **Vercel Project Settings:**
   - Framework Preset: Should be "Other" or auto-detected
   - Root Directory: Should be `./` (empty or current directory)
   - Build Command: Should be empty
   - Output Directory: Should be empty

2. **Contact Vercel Support:**
   - Vercel has excellent support
   - Check their status page: status.vercel.com
   - Contact support through the dashboard
