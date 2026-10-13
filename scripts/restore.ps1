param(
    [string]$GamePath = (Get-Location).Path
)

$ErrorActionPreference = 'Stop'
$targetDir = Join-Path $GamePath 'KR4_PC\\Localization'
$target = Join-Path $targetDir 'Localized_sp'
$backup = Join-Path $targetDir 'Localized_sp.before-vietnamese.bak'

if (-not (Test-Path -LiteralPath $backup)) {
    throw "Không tìm thấy bản sao lưu: $backup"
}

Copy-Item -LiteralPath $backup -Destination $target -Force
Write-Output "Đã khôi phục file ngôn ngữ gốc."
