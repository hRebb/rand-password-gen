Write-Host "Updating package information..."
sudo apt-get update

Write-Host "Installing 'kmod' package..."
sudo apt-get install -y kmod

$modinfo_version = modinfo --version

if (!(Get-Command modinfo -ErrorAction SilentlyContinue)) {
    Write-Host "modinfo is not installed. Installing..."
    Install-Package modinfo -Source 'YourPackageSource'
}

Write-Host "modinfo version: $modinfo_version"
