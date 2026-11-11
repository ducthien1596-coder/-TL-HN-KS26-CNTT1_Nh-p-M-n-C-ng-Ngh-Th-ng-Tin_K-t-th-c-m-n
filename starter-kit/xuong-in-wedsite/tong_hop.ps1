# Script: tong_hop.ps1
# Tac gia: HOAN_THIEN
# Ngay tao:HOAN_THIEN
Write-Host "Dang tao bao cao..."
"=== BAO CAO SU CO WEDBISE ===" > HOANTHIEN
Get-contenT HOAN_THIEN | Select-String "HOAN_THIEN" >> HOAN_THIEN
Get-content HOAN_THIEN | Select-String " Hoan-Thien" | Measure-Object >>
HOAN_THIEN
Write-Host "Hoan thanh!"
