# Script to add marketplace and install pm-skills plugins
# Run in PowerShell on Windows.

if (-not (Get-Command claude -ErrorAction SilentlyContinue)) {
    Write-Host "Error: 'claude' CLI not found. Install the CLI (see your provider's docs) and re-run this script." -ForegroundColor Yellow
    exit 1
}

claude plugin marketplace add phuryn/pm-skills
claude plugin install pm-toolkit@pm-skills
claude plugin install pm-product-strategy@pm-skills
claude plugin install pm-product-discovery@pm-skills
claude plugin install pm-market-research@pm-skills
claude plugin install pm-data-analytics@pm-skills
claude plugin install pm-marketing-growth@pm-skills
claude plugin install pm-go-to-market@pm-skills
claude plugin install pm-execution@pm-skills

Write-Host "Done. If commands succeeded, plugins are installed." -ForegroundColor Green
