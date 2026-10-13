param(
    [string]$GamePath = (Get-Location).Path
)

$ErrorActionPreference = 'Stop'
$source = Join-Path $PSScriptRoot '..\\patch\\Localized_sp'
$targetDir = Join-Path $GamePath 'KR4_PC\\Localization'
$target = Join-Path $targetDir 'Localized_sp'
$backup = Join-Path $targetDir 'Localized_sp.before-vietnamese.bak'

if (-not (Test-Path -LiteralPath $targetDir)) {
    throw "Không tìm thấy thư mục game: $targetDir"
}

if (-not (Test-Path -LiteralPath $backup)) {
    Copy-Item -LiteralPath $target -Destination $backup
}

Copy-Item -LiteralPath $source -Destination $target -Force
Write-Output "Đã cài bản Việt hóa: $target"
Write-Output "Hãy mở game và chọn ngôn ngữ Español."
