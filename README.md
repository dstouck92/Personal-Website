# Personal Website

A personal website deployed on Vercel.

## Setup Instructions

### 1. Add Your HTML Code
- Open `index.html` and replace the placeholder content with your downloaded HTML code from Claude
- If your HTML includes CSS, add it to `styles.css` or keep it in the HTML file
- If your HTML includes JavaScript, create a `script.js` file or keep it in the HTML file

### 2. Initialize Git (if not already done)
```bash
git init
git add .
git commit -m "Initial commit"
```

### 3. Deploy to Vercel

#### Option A: Using Vercel CLI (Recommended)
1. Install Vercel CLI globally:
   ```bash
   npm install -g vercel
   ```

2. Login to Vercel:
   ```bash
   vercel login
   ```

3. Deploy your site:
   ```bash
   vercel
   ```
   Follow the prompts. For production deployment, run:
   ```bash
   vercel --prod
   ```

#### Option B: Using Vercel Dashboard
1. Push your code to GitHub:
   ```bash
   git remote add origin <your-github-repo-url>
   git push -u origin main
   ```

2. Go to [vercel.com](https://vercel.com) and sign in
3. Click "Add New Project"
4. Import your GitHub repository
5. Vercel will automatically detect it as a static site and deploy it

### 4. Connect Your GoDaddy Domain

1. In your Vercel project dashboard, go to **Settings** → **Domains**
2. Add your domain (e.g., `yourdomain.com`)
3. Vercel will provide you with DNS records to add:
   - **A Record**: Point to Vercel's IP addresses
   - **CNAME Record**: Point to `cname.vercel-dns.com`
   - **TXT Record**: For domain verification (if needed)

4. In your GoDaddy account:
   - Go to **DNS Management** for your domain
   - Add the DNS records provided by Vercel
   - Wait for DNS propagation (can take a few minutes to 48 hours)

5. Vercel will automatically issue an SSL certificate for your domain

## Local Development

To run the site locally:
```bash
npm install -g vercel
vercel dev
```

Then visit `http://localhost:3000`

## Project Structure

```
Personal-Website/
├── index.html          # Main HTML file (paste your code here)
├── styles.css          # CSS styles
├── vercel.json         # Vercel configuration
├── package.json        # Node.js dependencies
└── README.md          # This file
```

## Notes

- Vercel automatically serves static files from the root directory
- No build process is required for static HTML sites
- Your site will be available at `yourproject.vercel.app` immediately after deployment
- Once DNS is configured, it will also be available at your custom domain
