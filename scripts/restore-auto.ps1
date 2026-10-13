$ErrorActionPreference = 'Stop'

$candidates = @(
    'C:\\Program Files (x86)\\Steam\\steamapps\\common\\Kingdom Rush Vengeance',
    'C:\\Program Files\\Steam\\steamapps\\common\\Kingdom Rush Vengeance',
    'D:\\SteamLibrary\\steamapps\\common\\Kingdom Rush Vengeance',
    'D:\\Steam\\steamapps\\common\\Kingdom Rush Vengeance'
)

$gamePath = $candidates | Where-Object {
    Test-Path -LiteralPath (Join-Path $_ 'KR4_PC\\Localization\\Localized_sp.before-vietnamese.bak')
} | Select-Object -First 1

if (-not $gamePath) {
    $gamePath = Read-Host 'Không tự tìm thấy game. Nhập đường dẫn thư mục game'
}

& (Join-Path $PSScriptRoot 'restore.ps1') -GamePath $gamePath
