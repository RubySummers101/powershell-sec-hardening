# disable_usb.ps1
# Description: This script disables USB storage device access on a Windows machine.
# Usage: Run as administrator in PowerShell

Write-Host "Disabling USB storage devices..." -ForegroundColor Cyan

# Set registry key to disable USB storage
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\USBSTOR" -Name "Start" -Value 4

Write-Host "USB storage access has been disabled." -ForegroundColor Green
