<?php
/**
 * Demo Website - SAA Hosting
 * This file demonstrates a simple PHP website that can be deployed
 */
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Demo Website - SAA Hosting</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <header>
            <h1>Welcome to SAA Hosting</h1>
            <p class="subtitle">Your Demo Website is Now Live!</p>
        </header>

        <main>
            <section class="hero">
                <h2>Deployed Successfully 🚀</h2>
                <p>This website was deployed directly from your GitHub repository using SAA Hosting's automated deployment system.</p>
            </section>

            <section class="features">
                <h3>What Just Happened:</h3>
                <ul>
                    <li>✅ Repository cloned from GitHub</li>
                    <li>✅ Files uploaded via FTP</li>
                    <li>✅ Website configured and deployed</li>
                    <li>✅ Domain pointing to your subdomain</li>
                </ul>
            </section>

            <section class="info">
                <h3>System Information:</h3>
                <div class="info-box">
                    <p><strong>PHP Version:</strong> <?php echo phpversion(); ?></p>
                    <p><strong>Server:</strong> <?php echo $_SERVER['SERVER_SOFTWARE'] ?? 'Unknown'; ?></p>
                    <p><strong>Document Root:</strong> <?php echo $_SERVER['DOCUMENT_ROOT'] ?? 'Unknown'; ?></p>
                    <p><strong>Current URL:</strong> <?php echo $_SERVER['HTTP_HOST'] ?? 'Unknown'; ?></p>
                </div>
            </section>

            <section class="next-steps">
                <h3>Next Steps:</h3>
                <ol>
                    <li>Customize this website with your own content</li>
                    <li>Update the index.php and style.css files</li>
                    <li>Push changes to GitHub</li>
                    <li>Deploy again from the SAA Hosting dashboard</li>
                </ol>
            </section>

            <section class="support">
                <h3>Need Help?</h3>
                <p>Visit our <a href="https://host.ammarsaa.com">support portal</a> to create a ticket or learn more.</p>
            </section>
        </main>

        <footer>
            <p>&copy; 2026 SAA Hosting. All rights reserved.</p>
            <p class="timestamp">Deployed at: <?php echo date('Y-m-d H:i:s'); ?></p>
        </footer>
    </div>
</body>
</html>
