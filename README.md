# Demo Website Repository

This is a demo repository for testing the SAA Hosting deployment system.

## Structure

- `index.php` - Main landing page
- `style.css` - Basic styling
- `database/export.sql` - Sample WordPress database export (optional)

## Features

- Simple static HTML homepage
- Sample CSS styling
- Optional database import for WordPress testing

## Deployment

This repository can be deployed directly to SAA Hosting subdomain through the deployment interface.

### For Static Site Deployment
Just deploy without database credentials.

### For WordPress Deployment
Include database credentials when deploying. The system will:
1. Import database/export.sql
2. Replace localhost with your subdomain
3. Upload all files via FTP
4. Website goes live!

