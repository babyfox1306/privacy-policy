# Script to push Privacy Policy to GitHub
# Usage: .\push-to-github.ps1

$repoName = "privacy-policy"
$githubUsername = "TuanAnhNguyen"

Write-Host "Setting up GitHub repository..." -ForegroundColor Green

# Check if remote exists
$remoteExists = git remote -v 2>&1 | Select-String "origin"

if (-not $remoteExists) {
    Write-Host "Adding remote repository..." -ForegroundColor Yellow
    git remote add origin "https://github.com/$githubUsername/$repoName.git"
} else {
    Write-Host "Remote already exists" -ForegroundColor Yellow
}

Write-Host ""
Write-Host "Next steps:" -ForegroundColor Cyan
Write-Host "1. Create repository '$repoName' on GitHub: https://github.com/new" -ForegroundColor White
Write-Host "2. Run: git push -u origin main" -ForegroundColor White
Write-Host "3. Enable GitHub Pages: Settings → Pages → Source: main branch" -ForegroundColor White
Write-Host "4. Your privacy policy will be at: https://$githubUsername.github.io/$repoName/" -ForegroundColor Green

