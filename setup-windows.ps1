# Setup script for Windows (PowerShell)
# Run as Administrator or with execution policy set:
#   Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

$ErrorActionPreference = "Stop"

# ─── Rust ────────────────────────────────────────────────────────────────────

Write-Host "`n==> Installing Rust..." -ForegroundColor Cyan

if (Get-Command winget -ErrorAction SilentlyContinue) {
    winget install --id Rustlang.Rustup -e --accept-package-agreements --accept-source-agreements
} else {
    $rustupInstaller = "$env:TEMP\rustup-init.exe"
    Invoke-WebRequest -Uri "https://win.rustup.rs/x86_64" -OutFile $rustupInstaller
    Start-Process -FilePath $rustupInstaller -ArgumentList "-y" -Wait
    Remove-Item $rustupInstaller
}

# Reload PATH so cargo/rustup are available in this session
$env:PATH = [System.Environment]::GetEnvironmentVariable("PATH", "User") + ";" + $env:PATH

rustup update
rustup default stable

Write-Host "Rust installed." -ForegroundColor Green

# ─── sc-meta ─────────────────────────────────────────────────────────────────

Write-Host "`n==> Installing sc-meta..." -ForegroundColor Cyan
cargo install multiversx-sc-meta --locked
sc-meta install all
Write-Host "sc-meta installed." -ForegroundColor Green

# ─── Python + pipx + mxpy ────────────────────────────────────────────────────

Write-Host "`n==> Installing mxpy..." -ForegroundColor Cyan

if (Get-Command winget -ErrorAction SilentlyContinue) {
    winget install --id Python.Python.3.12 -e --accept-package-agreements --accept-source-agreements
    $env:PATH = [System.Environment]::GetEnvironmentVariable("PATH", "User") + ";" + $env:PATH
}

python -m pip install --upgrade pip
python -m pip install --user pipx
python -m pipx ensurepath

$env:PATH = [System.Environment]::GetEnvironmentVariable("PATH", "User") + ";" + $env:PATH

pipx install mxpy
mxpy --version

Write-Host "mxpy installed." -ForegroundColor Green

Write-Host "`nAll tools installed successfully. Please restart your terminal." -ForegroundColor Green
