# PowerShell script to open website files in browser

$projectPath = "c:\Projects AI\Marketing"
Set-Location $projectPath

Write-Host "PowerTools Pro Website Launcher" -ForegroundColor Cyan
Write-Host "============================" -ForegroundColor Cyan
Write-Host ""

Write-Host "Available pages:" -ForegroundColor Yellow
Write-Host "1. Home Page (index.html)"
Write-Host "2. Services Page (services.html)"
Write-Host "3. Portfolio Page (portfolio.html)"
Write-Host "4. Contact Page (contact.html)"
Write-Host "5. About Us Page (about.html)"
Write-Host "6. Preview Page (preview.html)"
Write-Host "0. Exit"
Write-Host ""

$choice = Read-Host "Enter the number of the page you want to open (1-6) or 0 to exit"

switch ($choice) {
    "1" { Start-Process "index.html"; Write-Host "Opening Home Page..." -ForegroundColor Green }
    "2" { Start-Process "services.html"; Write-Host "Opening Services Page..." -ForegroundColor Green }
    "3" { Start-Process "portfolio.html"; Write-Host "Opening Portfolio Page..." -ForegroundColor Green }
    "4" { Start-Process "contact.html"; Write-Host "Opening Contact Page..." -ForegroundColor Green }
    "5" { Start-Process "about.html"; Write-Host "Opening About Us Page..." -ForegroundColor Green }
    "6" { Start-Process "preview.html"; Write-Host "Opening Preview Page..." -ForegroundColor Green }
    "0" { Write-Host "Exiting..." -ForegroundColor Red }
    default { Write-Host "Invalid choice. Please run the script again." -ForegroundColor Red }
}

Write-Host ""
Write-Host "Note: The website files are located in $projectPath" -ForegroundColor Cyan
Write-Host "You can also open any HTML file directly by double-clicking on it in File Explorer." -ForegroundColor Cyan