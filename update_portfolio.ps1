# Define repository path
$repoPath = "C:\Users\anjol\OneDrive\Documents\github\GitHub-Auto-Update"


# Change to the repository directory
Set-Location -Path $repoPath


# Configure Git (only needed once)
git config --global user.name "Anjolaoluwa-Oluyale"
git config --global user.email "anjolaoluyale@gmail.com"

# Pull the latest changes (if any)
git pull origin main

# Add all changes
git add .

# Commit with a timestamp
$commitMessage = "Updated portfolio on $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
git commit -m $commitMessage

# Push changes to GitHub
git push origin main

Write-Output "Portfolio updated successfully!"