# PowerShell Security Hardening: Disable USB Storage

This PowerShell script disables USB storage device access on Windows machines to help prevent data exfiltration and unauthorized file transfers.

---

## What It Does

- Modifies the Windows registry key that controls USBSTOR (USB Storage Driver)
- Sets the `Start` value to `4`, which disables the driver
- Prevents users from accessing USB flash drives or external hard drives

---

## Usage

1. Open PowerShell **as Administrator**
2. Run the script:

```powershell
./disable_usb.ps1
```

3. USB storage access will be disabled system-wide

---

## To Re-Enable USB Storage

If needed, you can set the registry key value back to `3`:

```powershell
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\USBSTOR" -Name "Start" -Value 3
```

---

## Notes

- **Requires administrative privileges**
- Script does **not** affect USB keyboards, mice, or other non-storage devices
- Intended for use in enterprise or secure environments where USB use should be restricted

---

## File

- `disable_usb.ps1`: PowerShell script to disable USB storage

---

## Why It Matters

Disabling USB storage can be a critical part of a broader endpoint hardening strategy, especially in secure or classified environments. It’s a quick win to reduce insider risk and data leakage vectors.
