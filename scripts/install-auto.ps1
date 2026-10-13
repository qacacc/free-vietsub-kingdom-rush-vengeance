$ErrorActionPreference = 'Stop'

function Find-GamePath {
    $candidates = @(
        'C:\\Program Files (x86)\\Steam\\steamapps\\common\\Kingdom Rush Vengeance',
        'C:\\Program Files\\Steam\\steamapps\\common\\Kingdom Rush Vengeance',
        'D:\\SteamLibrary\\steamapps\\common\\Kingdom Rush Vengeance',
        'D:\\Steam\\steamapps\\common\\Kingdom Rush Vengeance'
    )

    foreach ($candidate in $candidates) {
        if (Test-Path -LiteralPath (Join-Path $candidate 'KR4_PC\\Localization')) {
            return $candidate
        }
    }

    $inputPath = Read-Host 'Không tự tìm thấy game. Nhập đường dẫn thư mục game'
    if (Test-Path -LiteralPath (Join-Path $inputPath 'KR4_PC\\Localization')) {
        return $inputPath
    }

    throw 'Đường dẫn không chứa thư mục KR4_PC\\Localization.'
}

$gamePath = Find-GamePath
& (Join-Path $PSScriptRoot 'install.ps1') -GamePath $gamePath
